# Git 批量操作脚本使用说明

## 功能介绍

`git_batch.sh` 是一个交互式的shell脚本，用于批量执行多个Git项目的操作（push、pull、clone）。脚本会序贯执行每个项目的操作，确保上一个命令执行完毕后再执行下一个。

## 支持的项目列表

脚本支持以下项目的批量操作：
1. Py1_project
2. Py2_project
3. Php1_project
4. Lx1_project
5. C1_Project
6. lryper.com
7. test.com
8. webconf
9. cs.com
10. lryblog.com
11. pytool
12. qd.com
13. source
14. temp.com
15. progress

## 使用方法

1. **运行脚本**
   ```bash
   ./git_batch.sh
   ```

2. **选择操作类型**
   - 输入 `1` - 执行 Push 操作（推送到远程仓库）
   - 输入 `2` - 执行 Pull 操作（从远程仓库拉取）
   - 输入 `3` - 执行 Clone 操作（克隆远程仓库）
   - 输入 `4` - 退出程序

3. **确认执行**
   - 脚本会显示将要处理的所有项目列表
   - 输入 `y` 或 `Y` 确认执行
   - 输入其他任意键取消操作

## 操作说明

### Push 操作
- 进入每个项目目录
- 执行 `git add .`
- 执行 `git commit -m "update data at 时间戳"`
- 执行 `git push`

### Pull 操作
- 进入每个项目目录
- 执行 `git pull`

### Clone 操作
- 如果项目目录已存在，会先删除（需要sudo权限）
- 执行 `git clone` 克隆对应的仓库

## 执行结果

脚本执行完成后会显示：
- 成功执行的项目数量
- 失败的项目数量
- 失败项目的详细列表

## 注意事项

1. Clone 操作会删除已存在的项目目录，请谨慎使用
2. 脚本需要在 `/home/lirongyao0916/Projects/` 目录下有相应的权限
3. 确保已配置好Git的SSH密钥，以便能够正常访问GitHub仓库
4. 脚本会序贯执行，等待每个命令完成后再执行下一个，整个过程可能需要一些时间

## 日志示例

```
==================================
     Git 批量操作管理脚本
==================================

请选择要执行的操作：
1) Push (推送到远程仓库)
2) Pull (从远程仓库拉取)
3) Clone (克隆远程仓库)
4) 退出

请输入选项 (1-4): 1

将要执行 push 操作...
以下项目将被处理：

1. Py1_project
2. Py2_project
...

确认执行以上所有项目的 push 操作吗？(y/n): y

开始执行批量 push 操作...
==================================

正在处理: Py1_project
----------------------------------------
进入目录: /home/lirongyao0916/Projects/Py1_project
执行: git add .
执行: git commit -m "update data at 20250913090000"
执行: git push
✓ Py1_project push 成功
----------------------------------------
...
```
