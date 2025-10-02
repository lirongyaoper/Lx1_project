# 🚀 Squid 代理服务器完整部署指南

## 📋 目录
1. [安装 Squid](#1-安装-squid)
2. [选择配置方案](#2-选择配置方案)
3. [配置 Squid](#3-配置-squid)
4. [创建认证用户](#4-创建认证用户-可选)
5. [启动服务](#5-启动服务)
6. [防火墙配置](#6-防火墙配置)
7. [本地终端使用](#7-本地终端使用)
8. [测试验证](#8-测试验证)
9. [故障排除](#9-故障排除)
10. [性能优化](#10-性能优化)

---

## 1. 安装 Squid

### Ubuntu/Debian
```bash
# 更新包列表
sudo apt update

# 安装Squid
sudo apt install squid -y

# 查看版本
squid -v
```

### CentOS/RHEL
```bash
# 安装Squid
sudo yum install squid -y

# 或者使用dnf（CentOS 8+）
sudo dnf install squid -y

# 查看版本
squid -v
```

---

## 2. 选择配置方案

根据您的需求选择合适的配置文件：

| 配置文件 | 适用场景 | 安全级别 | 复杂度 |
|---------|---------|---------|--------|
| `squid-simple.conf` | 个人测试、开发环境 | 低 | ⭐ |
| `squid-auth.conf` | 需要用户认证的场景 | 中 | ⭐⭐ |
| `squid-production.conf` | 生产环境、大流量 | 高 | ⭐⭐⭐ |

---

## 3. 配置 Squid

### 3.1 备份原配置文件
```bash
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.backup
```

### 3.2 部署新配置

**方案一：简单配置（推荐新手）**
```bash
# 复制简单配置文件
sudo cp squid-simple.conf /etc/squid/squid.conf

# 根据实际情况修改允许的IP范围
sudo nano /etc/squid/squid.conf

# 找到以下行并修改：
# acl all_clients src 0.0.0.0/0  # 改为您的实际IP或网段
# 例如：acl all_clients src 123.45.67.89/32
```

**方案二：带认证配置（推荐）**
```bash
# 复制认证配置文件
sudo cp squid-auth.conf /etc/squid/squid.conf

# 需要继续完成第4步创建用户
```

**方案三：生产配置**
```bash
# 复制生产配置文件
sudo cp squid-production.conf /etc/squid/squid.conf

# 根据需求修改配置
sudo nano /etc/squid/squid.conf
```

### 3.3 创建必要的目录
```bash
# 创建缓存目录
sudo mkdir -p /var/spool/squid

# 创建日志目录
sudo mkdir -p /var/log/squid

# 设置权限
sudo chown -R proxy:proxy /var/spool/squid
sudo chown -R proxy:proxy /var/log/squid

# 初始化缓存目录
sudo squid -z
```

---

## 4. 创建认证用户（可选）

**仅在使用 `squid-auth.conf` 时需要**

### 4.1 安装密码工具
```bash
# Ubuntu/Debian
sudo apt install apache2-utils -y

# CentOS/RHEL
sudo yum install httpd-tools -y
```

### 4.2 创建用户
```bash
# 创建第一个用户（会提示输入密码）
sudo htpasswd -c /etc/squid/passwords proxyuser

# 添加更多用户（不要使用-c参数）
sudo htpasswd /etc/squid/passwords user2
sudo htpasswd /etc/squid/passwords user3

# 设置权限
sudo chown proxy:proxy /etc/squid/passwords
sudo chmod 640 /etc/squid/passwords

# 查看用户列表
sudo cat /etc/squid/passwords
```

### 4.3 测试认证配置
```bash
# 测试密码文件
/usr/lib/squid/basic_ncsa_auth /etc/squid/passwords
# 然后输入：username password
# 正确返回：OK
# 错误返回：ERR
```

---

## 5. 启动服务

### 5.1 检查配置
```bash
# 验证配置文件语法
sudo squid -k parse

# 如果有错误，会显示具体信息
```

### 5.2 启动 Squid
```bash
# 启动服务
sudo systemctl start squid

# 设置开机自启
sudo systemctl enable squid

# 查看状态
sudo systemctl status squid

# 查看日志（如果启动失败）
sudo tail -f /var/log/squid/cache.log
```

### 5.3 常用管理命令
```bash
# 重启Squid
sudo systemctl restart squid

# 重新加载配置（不中断连接）
sudo squid -k reconfigure
# 或
sudo systemctl reload squid

# 停止服务
sudo systemctl stop squid

# 查看端口监听
sudo netstat -tlnp | grep squid
# 或
sudo ss -tlnp | grep squid
```

---

## 6. 防火墙配置

### 6.1 使用 UFW (Ubuntu/Debian)
```bash
# 允许Squid端口
sudo ufw allow 3128/tcp

# 查看状态
sudo ufw status

# 如果UFW未启用
sudo ufw enable
```

### 6.2 使用 iptables
```bash
# 允许3128端口
sudo iptables -A INPUT -p tcp --dport 3128 -j ACCEPT

# 保存规则
sudo iptables-save | sudo tee /etc/iptables/rules.v4

# CentOS使用
sudo service iptables save
```

### 6.3 使用 firewalld (CentOS 7+)
```bash
# 允许端口
sudo firewall-cmd --permanent --add-port=3128/tcp

# 重新加载
sudo firewall-cmd --reload

# 查看规则
sudo firewall-cmd --list-all
```

### 6.4 云服务器安全组
如果使用阿里云、腾讯云、AWS等云服务器，还需要在控制台配置安全组：

- 添加入站规则
- 协议：TCP
- 端口：3128
- 来源：根据需求选择
  - 所有IP：0.0.0.0/0（不推荐）
  - 特定IP：您的本地公网IP

---

## 7. 本地终端使用

### 7.1 临时设置代理

**无认证版本：**
```bash
# 设置环境变量
export http_proxy="http://YOUR_SERVER_IP:3128"
export https_proxy="http://YOUR_SERVER_IP:3128"
export all_proxy="http://YOUR_SERVER_IP:3128"

# 例如：
export http_proxy="http://154.12.95.232:3128"
export https_proxy="http://154.12.95.232:3128"
```

**带认证版本：**
```bash
# 格式：http://username:password@server:port
export http_proxy="http://proxyuser:yourpassword@YOUR_SERVER_IP:3128"
export https_proxy="http://proxyuser:yourpassword@YOUR_SERVER_IP:3128"

# 例如：
export http_proxy="http://proxyuser:pass123@154.12.95.232:3128"
export https_proxy="http://proxyuser:pass123@154.12.95.232:3128"
```

**取消代理：**
```bash
unset http_proxy https_proxy all_proxy
```

### 7.2 创建便捷脚本

```bash
# 创建启用代理脚本
cat > ~/proxy-on.sh <<'EOF'
#!/bin/bash
export http_proxy="http://154.12.95.232:3128"
export https_proxy="http://154.12.95.232:3128"
export all_proxy="http://154.12.95.232:3128"
echo "✅ 代理已启用"
echo "服务器: 154.12.95.232:3128"
EOF

# 创建禁用代理脚本
cat > ~/proxy-off.sh <<'EOF'
#!/bin/bash
unset http_proxy https_proxy all_proxy
echo "❌ 代理已禁用"
EOF

# 添加执行权限
chmod +x ~/proxy-on.sh ~/proxy-off.sh

# 使用方法
source ~/proxy-on.sh   # 启用
source ~/proxy-off.sh  # 禁用
```

### 7.3 添加到 Shell 配置

```bash
# 编辑 ~/.bashrc 或 ~/.zshrc
nano ~/.bashrc

# 添加以下内容
cat >> ~/.bashrc <<'EOF'

# 代理快捷命令
alias proxy-on='export http_proxy="http://154.12.95.232:3128" https_proxy="http://154.12.95.232:3128" && echo "✅ 代理已启用"'
alias proxy-off='unset http_proxy https_proxy all_proxy && echo "❌ 代理已禁用"'
alias proxy-test='curl https://ipinfo.io/ip && echo ""'
EOF

# 重新加载配置
source ~/.bashrc

# 使用
proxy-on
proxy-test
proxy-off
```

### 7.4 特定应用代理配置

**Git：**
```bash
# 设置Git代理
git config --global http.proxy http://154.12.95.232:3128
git config --global https.proxy http://154.12.95.232:3128

# 取消Git代理
git config --global --unset http.proxy
git config --global --unset https.proxy
```

**wget：**
```bash
# 单次使用
wget -e use_proxy=yes -e http_proxy=154.12.95.232:3128 https://example.com

# 或编辑 ~/.wgetrc
cat >> ~/.wgetrc <<EOF
use_proxy = on
http_proxy = 154.12.95.232:3128
https_proxy = 154.12.95.232:3128
EOF
```

**apt (Ubuntu/Debian)：**
```bash
# 临时使用
sudo http_proxy=http://154.12.95.232:3128 apt update

# 永久配置
sudo nano /etc/apt/apt.conf.d/proxy.conf

# 添加：
Acquire::http::Proxy "http://154.12.95.232:3128";
Acquire::https::Proxy "http://154.12.95.232:3128";
```

**npm：**
```bash
npm config set proxy http://154.12.95.232:3128
npm config set https-proxy http://154.12.95.232:3128

# 取消
npm config delete proxy
npm config delete https-proxy
```

---

## 8. 测试验证

### 8.1 基本连接测试
```bash
# 测试代理是否工作
curl -x http://154.12.95.232:3128 http://httpbin.org/ip

# 使用环境变量测试
export http_proxy="http://154.12.95.232:3128"
curl http://httpbin.org/ip

# 查看当前IP（应该显示代理服务器IP）
curl https://ipinfo.io/ip

# 查看详细信息
curl https://ipinfo.io
```

### 8.2 认证测试
```bash
# 带认证的请求
curl -x http://proxyuser:password@154.12.95.232:3128 http://httpbin.org/ip

# 或使用-U参数
curl -x http://154.12.95.232:3128 -U proxyuser:password http://httpbin.org/ip
```

### 8.3 HTTPS测试
```bash
# 测试HTTPS请求
curl -x http://154.12.95.232:3128 https://www.google.com -I

# 测试完整页面
curl -x http://154.12.95.232:3128 https://www.baidu.com
```

### 8.4 服务器端监控
```bash
# 实时查看访问日志
sudo tail -f /var/log/squid/access.log

# 查看缓存日志
sudo tail -f /var/log/squid/cache.log

# 查看连接数
sudo netstat -an | grep :3128 | wc -l

# 查看Squid进程
ps aux | grep squid
```

---

## 9. 故障排除

### 9.1 服务无法启动

**检查配置文件语法：**
```bash
sudo squid -k parse
```

**查看详细错误：**
```bash
sudo tail -100 /var/log/squid/cache.log
```

**常见错误及解决：**

1. **端口被占用**
```bash
# 查看端口占用
sudo lsof -i :3128

# 更改配置文件中的端口
sudo nano /etc/squid/squid.conf
# 将 http_port 3128 改为其他端口
```

2. **权限问题**
```bash
# 重新设置权限
sudo chown -R proxy:proxy /var/spool/squid
sudo chown -R proxy:proxy /var/log/squid

# 重新初始化
sudo squid -z
```

3. **认证失败**
```bash
# 检查密码文件
sudo cat /etc/squid/passwords

# 测试认证
/usr/lib/squid/basic_ncsa_auth /etc/squid/passwords
# 输入：username password

# 检查文件权限
ls -l /etc/squid/passwords
# 应该是：-rw-r----- 1 proxy proxy
```

### 9.2 连接被拒绝

**检查防火墙：**
```bash
# UFW
sudo ufw status | grep 3128

# iptables
sudo iptables -L -n | grep 3128

# firewalld
sudo firewall-cmd --list-ports
```

**检查服务状态：**
```bash
sudo systemctl status squid
sudo netstat -tlnp | grep 3128
```

**检查ACL配置：**
```bash
# 确保配置文件中有允许访问的规则
sudo grep -A5 "http_access allow" /etc/squid/squid.conf
```

### 9.3 速度慢

**增加缓存：**
```bash
# 编辑配置文件
sudo nano /etc/squid/squid.conf

# 调整以下参数：
cache_mem 512 MB              # 增加内存缓存
cache_dir ufs /var/spool/squid 1000 16 256  # 增加磁盘缓存
```

**优化DNS：**
```bash
# 添加更快的DNS服务器
dns_nameservers 8.8.8.8 1.1.1.1 114.114.114.114
```

**检查网络延迟：**
```bash
# 从本地ping代理服务器
ping 154.12.95.232

# 测试带宽
curl -o /dev/null http://speedtest.tele2.net/10MB.zip -x http://154.12.95.232:3128
```

### 9.4 查看日志中的错误

```bash
# 查看拒绝的请求
sudo grep "TCP_DENIED" /var/log/squid/access.log | tail -20

# 查看错误信息
sudo grep "ERROR" /var/log/squid/cache.log

# 查看认证失败
sudo grep "auth" /var/log/squid/cache.log
```

---

## 10. 性能优化

### 10.1 系统优化

```bash
# 增加文件描述符限制
sudo nano /etc/security/limits.conf

# 添加：
proxy soft nofile 16384
proxy hard nofile 16384

# 修改系统参数
sudo nano /etc/sysctl.conf

# 添加：
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_keepalive_time = 1200
net.ipv4.ip_local_port_range = 10000 65000
net.ipv4.tcp_max_syn_backlog = 8192
net.core.somaxconn = 1024

# 应用更改
sudo sysctl -p
```

### 10.2 Squid 性能配置

```bash
# 编辑配置文件
sudo nano /etc/squid/squid.conf

# 添加或修改：
# 增加文件描述符
max_filedescriptors 16384

# 优化内存使用
cache_mem 1024 MB
maximum_object_size_in_memory 1024 KB

# 增加连接超时
read_timeout 5 minutes
request_timeout 5 minutes

# 启用缓存目录异步IO
cache_dir aufs /var/spool/squid 2000 16 256
```

### 10.3 监控脚本

```bash
# 创建监控脚本
cat > ~/squid-monitor.sh <<'EOF'
#!/bin/bash
echo "=== Squid 服务监控 ==="
echo ""
echo "服务状态："
systemctl status squid | grep Active
echo ""
echo "当前连接数："
netstat -an | grep :3128 | grep ESTABLISHED | wc -l
echo ""
echo "今日访问量："
cat /var/log/squid/access.log | grep $(date +%d/%b/%Y) | wc -l
echo ""
echo "内存使用："
ps aux | grep squid | grep -v grep | awk '{sum+=$6} END {print sum/1024 " MB"}'
echo ""
echo "最近10条访问："
tail -10 /var/log/squid/access.log
EOF

chmod +x ~/squid-monitor.sh

# 运行监控
~/squid-monitor.sh
```

---

## 📝 快速参考命令

```bash
# 安装
sudo apt install squid -y

# 配置
sudo nano /etc/squid/squid.conf

# 初始化
sudo squid -z

# 检查语法
sudo squid -k parse

# 启动
sudo systemctl start squid

# 开机自启
sudo systemctl enable squid

# 重启
sudo systemctl restart squid

# 重新加载配置
sudo squid -k reconfigure

# 查看日志
sudo tail -f /var/log/squid/access.log

# 本地使用
export http_proxy="http://SERVER:3128"
export https_proxy="http://SERVER:3128"

# 测试
curl https://ipinfo.io/ip
```

---

## 🔒 安全建议

1. **限制访问IP**：不要使用 `0.0.0.0/0` 允许所有IP
2. **启用认证**：使用用户名密码认证
3. **定期更新**：保持Squid版本最新
4. **监控日志**：定期检查异常访问
5. **使用HTTPS**：配置SSL证书支持HTTPS代理
6. **限制带宽**：避免被滥用
7. **备份配置**：定期备份配置文件

---

## 📚 参考资源

- [Squid 官方文档](http://www.squid-cache.org/Doc/)
- [Squid Wiki](https://wiki.squid-cache.org/)
- [配置示例](https://wiki.squid-cache.org/ConfigExamples)

---

**配置完成！** 🎉

如有问题，请检查日志文件或参考故障排除章节。

