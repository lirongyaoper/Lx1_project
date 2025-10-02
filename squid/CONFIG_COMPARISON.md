# 📊 Squid 配置文件对比与选择指南

## 服务器信息
- **服务器IP**: 154.12.95.232
- **服务端口**: 3128
- **本地网络**: 动态IP

---

## 🎯 三种配置方案对比

### 1. squid-simple.conf - 简单配置

**✅ 适用场景：**
- 个人测试和开发
- 临时使用
- 快速部署验证

**📋 特点：**
- ✅ 配置简单，一键部署
- ✅ 无需认证，直接使用
- ✅ 适合动态IP环境
- ❌ 安全性较低（任何人都可使用）
- ⚠️ 缓存大小：100MB

**🚀 部署命令：**
```bash
# 在服务器上
sudo cp squid-simple.conf /etc/squid/squid.conf
sudo squid -z
sudo systemctl restart squid
```

**💻 本地使用：**
```bash
export http_proxy="http://154.12.95.232:3128"
export https_proxy="http://154.12.95.232:3128"
curl https://ipinfo.io/ip  # 应显示：154.12.95.232
```

---

### 2. squid-auth.conf - 认证配置 ⭐推荐

**✅ 适用场景：**
- 个人长期使用
- 小团队共享
- 需要安全控制
- 动态IP环境

**📋 特点：**
- ✅ 需要用户名密码认证
- ✅ 安全性好，防止滥用
- ✅ 适合动态IP环境
- ✅ 支持多用户管理
- ✅ 完整的日志记录
- ⚠️ 缓存大小：100MB

**🚀 部署命令：**
```bash
# 在服务器上
sudo cp squid-auth.conf /etc/squid/squid.conf

# 创建认证用户
sudo apt install apache2-utils -y
sudo htpasswd -c /etc/squid/passwords myuser
# 输入密码：MySecurePass123

# 添加更多用户（不用-c参数）
sudo htpasswd /etc/squid/passwords user2

# 设置权限
sudo chown proxy:proxy /etc/squid/passwords
sudo chmod 640 /etc/squid/passwords

# 启动服务
sudo squid -z
sudo systemctl restart squid
```

**💻 本地使用：**
```bash
# 带认证的代理设置
export http_proxy="http://myuser:MySecurePass123@154.12.95.232:3128"
export https_proxy="http://myuser:MySecurePass123@154.12.95.232:3128"

# 测试
curl https://ipinfo.io/ip
```

---

### 3. squid-production.conf - 生产配置

**✅ 适用场景：**
- 企业生产环境
- 大流量高并发
- 需要性能优化
- 多用户同时使用

**📋 特点：**
- ✅ 高性能优化配置
- ✅ 大缓存空间（500MB，可调整）
- ✅ 完善的缓存策略
- ✅ 支持可选认证
- ✅ 详细的性能调优
- ⚠️ 配置相对复杂

**🚀 部署命令：**
```bash
# 在服务器上
sudo cp squid-production.conf /etc/squid/squid.conf

# 如果需要认证（推荐）
sudo apt install apache2-utils -y
sudo htpasswd -c /etc/squid/passwords admin
sudo chown proxy:proxy /etc/squid/passwords
sudo chmod 640 /etc/squid/passwords

# 取消配置文件中认证部分的注释
sudo nano /etc/squid/squid.conf
# 找到第18-22行，去掉注释符号#

# 启动服务
sudo squid -z
sudo systemctl restart squid
```

**💻 本地使用：**
```bash
# 无认证版本
export http_proxy="http://154.12.95.232:3128"
export https_proxy="http://154.12.95.232:3128"

# 或者带认证（如果启用了认证）
export http_proxy="http://admin:password@154.12.95.232:3128"
export https_proxy="http://admin:password@154.12.95.232:3128"
```

---

## 📊 详细对比表

| 特性 | Simple | Auth ⭐ | Production |
|------|--------|---------|------------|
| **安全性** | ⭐ 低 | ⭐⭐⭐ 高 | ⭐⭐⭐ 高 |
| **认证** | ❌ 无 | ✅ 用户名密码 | ⚠️ 可选 |
| **缓存大小** | 100MB | 100MB | 500MB |
| **内存缓存** | 256MB | 256MB | 512MB |
| **部署难度** | ⭐ 简单 | ⭐⭐ 中等 | ⭐⭐⭐ 较难 |
| **配置复杂度** | 低 | 中 | 高 |
| **性能优化** | 基础 | 中等 | 高级 |
| **日志记录** | 完整 | 完整+用户 | 完整+优化 |
| **适用场景** | 测试 | 个人/小团队 | 企业生产 |
| **推荐指数** | ⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

---

## 🎯 选择建议

### 👤 个人用户
**推荐：squid-auth.conf**
- ✅ 安全有保障
- ✅ 配置不复杂
- ✅ 适合动态IP
- ✅ 防止被他人滥用

### 👥 小团队（2-10人）
**推荐：squid-auth.conf**
- ✅ 可以创建多个用户
- ✅ 每个人独立账号
- ✅ 便于管理和审计

### 🏢 企业/大团队
**推荐：squid-production.conf**
- ✅ 高性能支持大流量
- ✅ 完善的缓存策略
- ✅ 可扩展性强
- ⚠️ 建议配合认证使用

### 🧪 临时测试
**推荐：squid-simple.conf**
- ✅ 快速部署
- ✅ 简单直接
- ⚠️ 用完记得关闭

---

## 🔧 通用部署流程

无论选择哪个配置，都遵循以下流程：

### 1️⃣ 上传配置文件
```bash
scp squid-xxx.conf root@154.12.95.232:/tmp/
```

### 2️⃣ SSH登录服务器
```bash
ssh root@154.12.95.232
```

### 3️⃣ 备份原配置
```bash
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.backup.$(date +%Y%m%d_%H%M%S)
```

### 4️⃣ 应用新配置
```bash
sudo cp /tmp/squid-xxx.conf /etc/squid/squid.conf
```

### 5️⃣ 检查配置语法
```bash
sudo squid -k parse
```

### 6️⃣ 初始化缓存目录（首次）
```bash
sudo mkdir -p /var/spool/squid
sudo chown -R proxy:proxy /var/spool/squid
sudo squid -z
```

### 7️⃣ 启动服务
```bash
sudo systemctl restart squid
sudo systemctl enable squid
sudo systemctl status squid
```

### 8️⃣ 配置防火墙
```bash
sudo ufw allow 3128/tcp
sudo ufw status
```

### 9️⃣ 查看日志
```bash
sudo tail -f /var/log/squid/cache.log
sudo tail -f /var/log/squid/access.log
```

---

## 🔒 安全加固建议

### 方案1：使用认证（推荐）✅
```bash
# 使用 squid-auth.conf
# 设置强密码
# 定期更换密码
```

### 方案2：防火墙限制IP
```bash
# 只允许特定IP访问3128端口
sudo ufw delete allow 3128/tcp
sudo ufw allow from YOUR_LOCAL_IP to any port 3128
sudo ufw reload
```

### 方案3：组合使用（最安全）
```bash
# 同时使用认证 + 防火墙限制
# squid-auth.conf + UFW规则
```

---

## 📝 便捷脚本

### 本地代理开关脚本
```bash
# 创建脚本
cat > ~/proxy-154.sh <<'EOF'
#!/bin/bash
SERVER="154.12.95.232:3128"
USERNAME="myuser"
PASSWORD="MySecurePass123"

case "$1" in
    on)
        # 带认证
        export http_proxy="http://$USERNAME:$PASSWORD@$SERVER"
        export https_proxy="http://$USERNAME:$PASSWORD@$SERVER"
        # 无认证（如果使用simple配置）
        # export http_proxy="http://$SERVER"
        # export https_proxy="http://$SERVER"
        echo "✅ 代理已启用: $SERVER"
        ;;
    off)
        unset http_proxy https_proxy all_proxy
        echo "❌ 代理已禁用"
        ;;
    test)
        echo "🔍 当前IP："
        curl -s https://ipinfo.io/ip
        echo ""
        echo "📊 代理状态："
        [ -n "$http_proxy" ] && echo "  ✅ 代理已启用: $http_proxy" || echo "  ❌ 代理未启用"
        ;;
    *)
        echo "用法: source $0 {on|off|test}"
        ;;
esac
EOF

chmod +x ~/proxy-154.sh

# 使用方法
source ~/proxy-154.sh on    # 启用
source ~/proxy-154.sh test  # 测试
source ~/proxy-154.sh off   # 禁用
```

---

## 📊 监控命令

### 服务器端监控
```bash
# 查看实时日志
sudo tail -f /var/log/squid/access.log

# 查看今日访问量
grep $(date +%d/%b/%Y) /var/log/squid/access.log | wc -l

# 查看当前连接数
sudo netstat -an | grep :3128 | grep ESTABLISHED | wc -l

# 查看服务状态
sudo systemctl status squid

# 查看内存使用
ps aux | grep squid | grep -v grep | awk '{print $6/1024 " MB"}'
```

### 本地测试命令
```bash
# 测试代理连通性
curl -x http://154.12.95.232:3128 http://httpbin.org/ip

# 测试HTTPS
curl -x http://154.12.95.232:3128 https://www.google.com -I

# 查看当前IP
curl https://ipinfo.io/ip

# 测试速度
time curl -x http://154.12.95.232:3128 -o /dev/null -s http://speedtest.tele2.net/10MB.zip
```

---

## ⚠️ 常见问题

### Q1: 代理无法连接？
```bash
# 检查服务状态
sudo systemctl status squid

# 检查端口监听
sudo netstat -tlnp | grep 3128

# 检查防火墙
sudo ufw status

# 查看错误日志
sudo tail -50 /var/log/squid/cache.log
```

### Q2: 认证失败？
```bash
# 测试密码文件
/usr/lib/squid/basic_ncsa_auth /etc/squid/passwords
# 输入：username password

# 检查权限
ls -l /etc/squid/passwords

# 重新创建用户
sudo htpasswd -c /etc/squid/passwords username
```

### Q3: 速度慢？
```bash
# 增加缓存
sudo nano /etc/squid/squid.conf
# 修改：cache_mem 512 MB
# 修改：cache_dir ufs /var/spool/squid 1000 16 256

# 重启服务
sudo systemctl restart squid
```

---

## 📚 总结

**快速决策树：**

```
是否需要安全保障？
├─ 是 → 使用 squid-auth.conf ⭐推荐
└─ 否 → 
    ├─ 只是临时测试？
    │   └─ 是 → squid-simple.conf
    └─ 生产环境大流量？
        └─ 是 → squid-production.conf + 认证
```

**最佳实践：**
1. ✅ 优先使用 `squid-auth.conf`（带认证）
2. ✅ 设置强密码（字母+数字+特殊字符）
3. ✅ 定期查看日志，监控异常访问
4. ✅ 定期更新Squid版本
5. ✅ 备份配置文件

---

**配置完成后，请运行测试命令验证！** 🎉

