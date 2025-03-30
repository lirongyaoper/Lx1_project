以下是 **将本地文件推送到 GitHub 仓库的完整命令流程**，涵盖从初始化到推送的每一步：

---

### **1. 初始化本地仓库（若未初始化）**
```bash
git init
```

---

### **2. 关联远程仓库（SSH 协议）**
```bash
git remote add origin git@github.com:你的GitHub用户名/仓库名.git
```
- **解释**：  
  - `origin` 是远程仓库的默认别名（可自定义，如 `github`）。  
  - 地址格式为 `git@github.com:用户名/仓库名.git`（使用 SSH 密钥认证）。

---

### **3. 添加文件到暂存区**
```bash
git add .                     # 添加所有新文件和修改过的文件
git add file.txt             # 添加单个文件
git add *.js                 # 添加所有 .js 文件
```

---

### **4. 提交更改到本地仓库**
```bash
git commit -m "提交描述（如：添加首页代码）"
```
- **注意**：提交描述需简洁明确（如“修复登录bug”、“更新文档”）。

---

### **5. 推送到远程仓库**
#### **首次推送**（指定默认上游分支）：
```bash
git push -u origin main      # 推送本地 main 分支到远程 main 分支
```
- **`-u` 参数**：将本地分支与远程分支关联，后续可直接用 `git push` 或 `git pull`。

#### **后续推送**：
```bash
git push                     # 简化推送（需已关联上游分支）
git push origin dev          # 推送本地 dev 分支到远程 dev 分支
```

---

### **完整示例**
假设要将本地项目 `my-app` 推送到 GitHub 仓库 `my-app`：
```bash
cd my-app
git init
git add .
git commit -m "Initial commit: project setup"
git remote add origin git@github.com:yourname/my-app.git
git push -u origin main
```

---

### **常见问题与解决**

#### **1. 错误：`remote: Repository not found`**
- **原因**：远程仓库不存在或地址错误。
- **解决**：
  1. 检查 GitHub 仓库名称和权限。
  2. 确认远程地址是否正确：
     ```bash
     git remote -v
     ```

#### **2. 错误：`Permission denied (publickey)`**
- **原因**：SSH 密钥未正确配置。
- **解决**：
  ```bash
  ssh -T git@github.com         # 测试 SSH 连接
  # 若失败，检查公钥是否添加到 GitHub 的 SSH Keys 设置
  ```

#### **3. 错误：`Updates were rejected`**
- **原因**：远程仓库有本地未拉取的更新。
- **解决**：
  ```bash
  git pull origin main          # 拉取远程更新并合并
  git push
  ```

---

### **扩展操作**
#### **强制覆盖远程仓库（慎用！）**
```bash
git push --force origin main    # 强制用本地提交覆盖远程（可能丢失远程数据）
```

#### **推送到指定标签（Tag）**
```bash
git tag v1.0.0                 # 创建标签
git push origin v1.0.0         # 推送单个标签
git push origin --tags         # 推送所有标签
```

---

### **验证推送结果**
1. 访问 GitHub 仓库页面，检查文件是否更新。
2. 查看提交历史：
   ```bash
   git log --oneline
   ```

---

### **最佳实践**
1. **忽略无关文件**：创建 `.gitignore` 文件，排除日志、临时文件等。  
   ```bash
   echo "node_modules/" >> .gitignore
   ```
2. **分支管理**：开发新功能时创建新分支，避免直接修改 `main` 分支。  
3. **定期同步**：推送前先拉取远程更新，减少冲突。

---

通过上述命令，即可安全高效地将本地文件推送到 GitHub！