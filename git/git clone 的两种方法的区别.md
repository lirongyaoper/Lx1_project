在 Git 中，`git clone` 的两种主要方法指的是 **通过 HTTPS 协议克隆** 和 **通过 SSH 协议克隆**。它们的核心区别在于 **认证方式** 和 **使用场景**，以下是详细对比：

---

### **1. HTTPS 协议克隆**
**命令格式**：
```bash
git clone https://github.com/user/repo.git
```

#### **特点**：
- **认证方式**：
  - 需要输入 GitHub/GitLab 的用户名和密码（或 Personal Access Token，简称 PAT）。
  - 对于公共仓库（Public Repo），可以匿名克隆（无需登录）。
- **适用场景**：
  - 简单快捷，适合新手或临时访问仓库。
  - 适用于公司网络防火墙限制 SSH 端口（22）的场景（HTTPS 走 443 端口，通常开放）。
- **安全性**：
  - 如果配置了双因素认证（2FA），必须使用 PAT 替代密码。
  - 默认不保存密码，需配置 Git 凭证存储（如 `git config --global credential.helper store`）。

---

### **2. SSH 协议克隆**
**命令格式**：
```bash
git clone git@github.com:user/repo.git
```

#### **特点**：
- **认证方式**：
  - 使用 SSH 密钥对（公钥 + 私钥）进行认证，无需输入密码。
  - 需要提前将 **公钥** 添加到 GitHub/GitLab 账户的 SSH Keys 设置中。
- **适用场景**：
  - 适合频繁操作仓库的开发者（无需重复输入密码）。
  - 适合自动化脚本或 CI/CD 环境（通过密钥实现无密码操作）。
- **安全性**：
  - 密钥认证更安全（私钥本地存储，不通过网络传输）。
  - 如果私钥未加密，需妥善保管（建议使用 `ssh-keygen` 生成时设置密码）。

---

### **核心对比表**
| 特性                | HTTPS 克隆                          | SSH 克隆                            |
|---------------------|-------------------------------------|-------------------------------------|
| **认证方式**        | 用户名 + 密码 / PAT                | SSH 密钥对                          |
| **是否需要配置密钥**| 否                                  | 是（需提前配置公钥到远程平台）       |
| **端口**            | 443（HTTPS）                       | 22（SSH）                           |
| **适用场景**        | 临时访问、简单操作                  | 长期开发、自动化脚本                |
| **安全性**          | 依赖密码/PAT（需保护）              | 依赖密钥安全（私钥不泄露）           |
| **网络限制**        | 通常无限制（443 端口普遍开放）      | 可能被防火墙拦截（SSH 端口受限）     |

---

### **如何切换远程仓库的协议？**
如果已克隆仓库，可以修改远程地址切换协议：
```bash
# 查看当前远程地址
git remote -v

# 修改为 HTTPS 协议
git remote set-url origin https://github.com/user/repo.git

# 修改为 SSH 协议
git remote set-url origin git@github.com:user/repo.git
```

---

### **如何选择？**
- **推荐 HTTPS**：
  - 初次使用 Git，或只需偶尔拉取代码。
  - 网络环境限制 SSH 端口（如公司内网）。
- **推荐 SSH**：
  - 需要频繁推送代码或自动化操作。
  - 已配置 SSH 密钥且追求高效认证。

---

### **SSH 密钥配置示例**
1. 生成 SSH 密钥（如果尚未生成）：
   ```bash
   ssh-keygen -t ed25519 -C "your-email@example.com"
   ```
   - 默认保存路径：`~/.ssh/id_ed25519`（私钥）和 `~/.ssh/id_ed25519.pub`（公钥）。
2. 将公钥内容添加到 GitHub/GitLab：
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```
   - 复制输出内容，粘贴到账户的 **SSH Keys** 设置中。

--- 

掌握这两种方法的区别后，可以根据实际需求灵活选择克隆方式！
```bash
alias gitpp='cd /home/lirongyaoper/Projects/Python01/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlp='cd /home/lirongyaoper/Projects/Linux/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'


alias gitps='cd /home/lirongyaoper/Projects/Python01/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitls='cd /home/lirongyaoper/Projects/Linux/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitpl='cd /home/lirongyaoper/Projects/Python01/ &&  git pull'
alias gitll='cd /home/lirongyaoper/Projects/Linux/ &&  git pull'
alias gitcp='cd /home/lirongyaoper/Projects && rm -rf ./Python01 &&  git clone git@github.com:lirongyaoper/Python01.git'
alias gitcl='cd /home/lirongyaoper/Projects && rm -rf ./Linux &&  git clone git@github.com:lirongyaoper/Linux.git'


```

