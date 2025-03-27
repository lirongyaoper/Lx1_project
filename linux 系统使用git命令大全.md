以下是在 Linux 系统下使用 Git 的常用命令大全，涵盖日常开发中的核心操作：

---

### **1. 配置 Git**
```bash
# 设置全局用户名和邮箱（提交时显示）
git config --global user.name "Your Name"
git config --global user.email "email@example.com"

# 查看全局配置
git config --global --list

# 设置当前仓库的用户名（覆盖全局配置）
git config user.name "Project-Specific Name"

# 设置换行符规则（Linux/macOS 用 LF，Windows 用 CRLF）
git config --global core.autocrlf input  # Linux/macOS 推荐
```

---

### **2. 仓库操作**
```bash
# 初始化本地仓库
git init

# 克隆远程仓库
git clone https://github.com/user/repo.git
git clone https://github.com/user/repo.git my-folder  # 克隆到指定目录

# 查看远程仓库地址
git remote -v

# 添加远程仓库
git remote add origin https://github.com/user/repo.git

# 拉取远程分支并合并（等价于 git fetch + git merge）
git pull origin main

# 推送本地分支到远程
git push origin main
git push -u origin main  # 设置默认上游分支（后续可直接 git push）
```

---

### **3. 基础操作**
```bash
# 查看仓库状态（新增/修改/删除的文件）
git status

# 添加文件到暂存区
git add file.txt         # 添加单个文件
git add .                # 添加所有修改（包括新文件和修改的文件）
git add -u              # 添加所有已跟踪文件的修改（不包含新文件）

# 提交更改到本地仓库
git commit -m "Commit message"

# 修改上一次提交（追加修改到上次提交）
git commit --amend

# 查看提交历史（精简版）
git log --oneline

# 查看某次提交的详细内容
git show <commit-id>
```

---

### **4. 分支管理**
```bash
# 查看所有分支（本地 + 远程）
git branch -a

# 创建新分支
git branch new-branch

# 切换到分支
git checkout new-branch
git switch new-branch    # Git 2.23+ 推荐

# 创建并切换到新分支
git checkout -b new-branch

# 合并分支（将 new-branch 合并到当前分支）
git merge new-branch

# 删除分支
git branch -d old-branch  # 安全删除（已合并）
git branch -D old-branch  # 强制删除（未合并）
```

---

### **5. 撤销与回退**
```bash
# 撤销工作区的修改（未 add 的文件）
git checkout -- file.txt

# 撤销暂存区的修改（已 add 但未 commit）
git reset HEAD file.txt  # 撤销 add 操作，保留文件修改
git restore --staged file.txt  # Git 2.23+ 替代命令

# 回退到某次提交（丢弃之后的提交）
git reset --hard <commit-id>   # 强制回退工作区和暂存区
git reset --soft <commit-id>   # 仅回退提交，保留修改

# 恢复被删除的文件（从最近一次提交中找回）
git checkout HEAD -- deleted-file.txt
```

---

### **6. 远程仓库协作**
```bash
# 拉取远程分支并创建本地分支
git fetch origin
git checkout -b new-branch origin/new-branch

# 强制推送（谨慎使用！覆盖远程提交）
git push --force origin main

# 删除远程分支
git push origin --delete old-branch

# 关联本地分支与远程分支
git branch --set-upstream-to=origin/main main
```

---

### **7. 标签管理**
```bash
# 创建标签（常用于版本发布）
git tag v1.0.0          # 轻量标签
git tag -a v1.0.0 -m "Release version 1.0.0"  # 附注标签

# 推送标签到远程
git push origin v1.0.0
git push origin --tags   # 推送所有本地标签

# 删除标签
git tag -d v1.0.0       # 删除本地标签
git push origin --delete v1.0.0  # 删除远程标签
```

---

### **8. 高级操作**
```bash
# 储藏当前修改（临时切换分支）
git stash               # 储藏工作区和暂存区
git stash pop           # 恢复最近的储藏并删除储藏记录

# 比较差异
git diff                # 工作区与暂存区的差异
git diff --staged       # 暂存区与最后一次提交的差异
git diff HEAD~2 HEAD    # 比较两次提交的差异

# 变基（Rebase，整理提交历史）
git rebase main         # 将当前分支的提交“移植”到 main 分支最新提交之后
git rebase -i HEAD~3    # 交互式变基（修改最近 3 次提交）
```

---

### **9. 解决冲突**
1. **冲突发生场景**：合并（`git merge`）或变基（`git rebase`）时。
2. **操作步骤**：
   - 打开冲突文件，手动编辑标记（`<<<<<<< HEAD` 到 `>>>>>>> branch`）。
   - 解决冲突后，保存文件。
   - 执行 `git add resolved-file.txt` 标记冲突已解决。
   - 继续合并或变基：`git commit` 或 `git rebase --continue`。

---

### **10. 其他实用命令**
```bash
# 查看文件修改历史
git blame file.txt      # 显示每行代码的最后修改者

# 忽略文件（配置 .gitignore）
echo "logs/" >> .gitignore  # 忽略 logs 目录

# 子模块管理（引用其他仓库）
git submodule add https://github.com/user/submodule.git
git submodule update --init --recursive  # 初始化子模块
```

---

### **常用场景示例**
1. **首次提交代码到 GitHub**：
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/user/repo.git
   git push -u origin main
   ```

2. **丢弃本地所有未提交的修改**：
   ```bash
   git reset --hard HEAD
   ```

3. **同步远程仓库最新代码**：
   ```bash
   git fetch origin
   git rebase origin/main  # 或 git merge origin/main
   ```

---

掌握这些命令后，可以覆盖 90% 的日常 Git 操作需求！如需更深入学习，可参考官方文档：  
👉 [Git 官方文档](https://git-scm.com/docs)
