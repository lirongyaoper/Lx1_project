# 文本复制工具 (Text Copy Tool)

一个功能强大的 Bash 脚本工具，用于在 Ubuntu/Linux 系统中复制文本文件内容，支持多种操作模式。

## 📋 目录

- [功能特性](#功能特性)
- [安装说明](#安装说明)
- [使用方法](#使用方法)
- [操作模式详解](#操作模式详解)
- [选项参数](#选项参数)
- [使用示例](#使用示例)
- [错误处理](#错误处理)
- [注意事项](#注意事项)
- [常见问题](#常见问题)

## ✨ 功能特性

### 🎯 核心功能
- **覆盖模式**: 完全替换目标文件内容
- **追加模式**: 在目标文件末尾添加内容
- **插入模式**: 在目标文件开头或指定行插入内容
- **备份功能**: 操作前自动备份原文件
- **安全确认**: 重要操作前用户确认机制

### 🛡️ 安全特性
- 文件存在性和权限检查
- 自动创建目标目录
- 时间戳备份文件命名
- 彩色输出提升用户体验
- 详细的操作日志

### 🚀 易用性
- 直观的命令行界面
- 详细的帮助文档
- 智能错误提示
- 批处理支持（强制模式）

## 📦 安装说明

### 1. 下载脚本
```bash
# 确保脚本文件存在
ls -la text_copy.sh
```

### 2. 添加执行权限
```bash
chmod +x text_copy.sh
```

### 3. 可选：添加到系统路径
```bash
# 复制到系统路径（需要 sudo 权限）
sudo cp text_copy.sh /usr/local/bin/text_copy

# 或者添加当前目录到 PATH
export PATH=$PATH:$(pwd)
```

## 🚀 使用方法

### 基本语法
```bash
./text_copy.sh [选项] <源文件> <目标文件>
```

### 快速开始
```bash
# 最简单的使用方式（覆盖模式）
./text_copy.sh source.txt target.txt
```

## 🎛️ 操作模式详解

### 1. 覆盖模式 (Overwrite Mode)
**命令**: `-o` 或 `--overwrite` (默认模式)

完全替换目标文件的内容。

```bash
./text_copy.sh -o source.txt target.txt
# 或者直接
./text_copy.sh source.txt target.txt
```

**行为**:
- 如果目标文件存在，会提示用户确认
- 目标文件内容会被完全替换
- 原文件内容丢失（除非使用备份选项）

### 2. 追加模式 (Append Mode)
**命令**: `-a` 或 `--append`

在目标文件末尾添加源文件内容。

```bash
./text_copy.sh -a source.txt target.txt
```

**行为**:
- 保留目标文件原有内容
- 源文件内容添加到文件末尾
- 如果目标文件不存在，会创建新文件

**示例**:
```
目标文件原内容:
Line 1
Line 2

源文件内容:
New Line 1
New Line 2

追加后结果:
Line 1
Line 2
New Line 1
New Line 2
```

### 3. 插入到开头模式 (Prepend Mode)
**命令**: `-p` 或 `--prepend`

在目标文件开头插入源文件内容。

```bash
./text_copy.sh -p source.txt target.txt
```

**行为**:
- 源文件内容插入到目标文件开头
- 目标文件原内容向后移动
- 如果目标文件不存在，效果等同于覆盖模式

**示例**:
```
目标文件原内容:
Line 1
Line 2

源文件内容:
New Line 1
New Line 2

插入后结果:
New Line 1
New Line 2
Line 1
Line 2
```

### 4. 指定行插入模式 (Insert at Line Mode)
**命令**: `-i LINE` 或 `--insert LINE`

在目标文件的指定行号位置插入源文件内容。

```bash
./text_copy.sh -i 3 source.txt target.txt
```

**行为**:
- 在指定行号前插入源文件内容
- 原文件从指定行开始的内容向后移动
- 行号从 1 开始计算
- 如果行号超过文件总行数，会追加到末尾

**示例**:
```
目标文件原内容:
Line 1
Line 2
Line 3
Line 4

源文件内容:
Inserted Line 1
Inserted Line 2

在第3行插入后结果:
Line 1
Line 2
Inserted Line 1
Inserted Line 2
Line 3
Line 4
```

## 🔧 选项参数

| 选项 | 长选项 | 描述 | 示例 |
|------|--------|------|------|
| `-o` | `--overwrite` | 覆盖目标文件（默认） | `./text_copy.sh -o src.txt dst.txt` |
| `-a` | `--append` | 追加到目标文件末尾 | `./text_copy.sh -a src.txt dst.txt` |
| `-p` | `--prepend` | 插入到目标文件开头 | `./text_copy.sh -p src.txt dst.txt` |
| `-i LINE` | `--insert LINE` | 插入到指定行号 | `./text_copy.sh -i 5 src.txt dst.txt` |
| `-b` | `--backup` | 操作前备份目标文件 | `./text_copy.sh -b -a src.txt dst.txt` |
| `-f` | `--force` | 强制执行，不询问确认 | `./text_copy.sh -f -o src.txt dst.txt` |
| `-h` | `--help` | 显示帮助信息 | `./text_copy.sh -h` |

### 选项组合使用

多个选项可以组合使用：

```bash
# 追加模式 + 备份 + 强制执行
./text_copy.sh -b -a -f source.txt target.txt

# 插入模式 + 备份
./text_copy.sh -b -i 10 source.txt target.txt
```

## 📚 使用示例

### 基础示例

#### 1. 简单覆盖
```bash
./text_copy.sh config.txt /etc/myapp/config.txt
```

#### 2. 追加日志
```bash
./text_copy.sh new_logs.txt /var/log/application.log
```

#### 3. 插入头部信息
```bash
./text_copy.sh header.txt document.txt
```

### 高级示例

#### 1. 安全的配置文件更新
```bash
# 备份原配置文件并覆盖
./text_copy.sh -b -f new_config.txt /etc/nginx/nginx.conf
```

#### 2. 在文档中插入章节
```bash
# 在第50行插入新章节
./text_copy.sh -i 50 new_chapter.txt book.txt
```

#### 3. 批量处理脚本
```bash
#!/bin/bash
# 批量追加文件
for file in *.log; do
    ./text_copy.sh -f -a summary.txt "$file"
done
```

### 实际应用场景

#### 1. 系统管理
```bash
# 更新 hosts 文件
./text_copy.sh -b new_hosts.txt /etc/hosts

# 追加 cron 任务
./text_copy.sh -a new_cron_jobs.txt /tmp/crontab_temp
```

#### 2. 开发工作
```bash
# 在代码文件开头插入版权信息
./text_copy.sh -p copyright.txt source_code.js

# 追加测试用例
./text_copy.sh -a new_tests.js test_suite.js
```

#### 3. 文档管理
```bash
# 在文档特定位置插入内容
./text_copy.sh -i 25 new_section.md manual.md

# 合并多个文档
./text_copy.sh -a appendix.md main_document.md
```

## 🔍 演示脚本

项目包含一个演示脚本 `demo.sh`，展示所有功能：

```bash
# 运行演示
./demo.sh
```

演示脚本会：
1. 显示帮助信息
2. 准备测试文件
3. 演示各种操作模式
4. 显示每次操作的结果

## ⚠️ 错误处理

脚本包含完善的错误处理机制：

### 常见错误及解决方案

| 错误信息 | 原因 | 解决方案 |
|----------|------|----------|
| `源文件不存在` | 指定的源文件路径错误 | 检查文件路径是否正确 |
| `无法读取源文件` | 文件权限不足 | 使用 `chmod +r` 添加读权限 |
| `无法创建目录` | 目标目录权限不足 | 检查父目录权限或使用 `sudo` |
| `行号必须是正整数` | `-i` 参数不是有效数字 | 使用正整数作为行号 |
| `未知选项` | 使用了不存在的选项 | 使用 `-h` 查看可用选项 |

### 错误信息颜色说明

- 🔴 **红色**: 错误信息
- 🟡 **黄色**: 警告信息
- 🟢 **绿色**: 成功信息
- 🔵 **蓝色**: 普通信息

## 📝 注意事项

### 1. 文件权限
- 确保对源文件有读权限
- 确保对目标文件/目录有写权限
- 使用 `sudo` 处理系统文件时要格外小心

### 2. 备份策略
- 备份文件使用时间戳命名：`filename.backup.YYYYMMDD_HHMMSS`
- 备份文件不会自动清理，需要手动管理
- 重要文件操作前建议使用 `-b` 选项

### 3. 大文件处理
- 脚本会将整个文件加载到内存
- 处理大文件时注意系统内存使用
- 对于超大文件，建议使用系统命令如 `dd` 或 `rsync`

### 4. 字符编码
- 脚本保持源文件的原始编码
- 混合编码文件可能导致显示问题
- 建议统一使用 UTF-8 编码

## ❓ 常见问题

### Q1: 如何处理包含特殊字符的文件名？
**A**: 使用引号包围文件名：
```bash
./text_copy.sh "file with spaces.txt" "target file.txt"
```

### Q2: 可以在脚本中使用通配符吗？
**A**: 不直接支持，但可以结合 shell 通配符：
```bash
for file in *.txt; do
    ./text_copy.sh -a "$file" combined.txt
done
```

### Q3: 如何批量处理多个文件？
**A**: 使用循环或编写包装脚本：
```bash
#!/bin/bash
files=("file1.txt" "file2.txt" "file3.txt")
for file in "${files[@]}"; do
    ./text_copy.sh -f -a "$file" combined.txt
done
```

### Q4: 插入模式的行号是如何计算的？
**A**: 行号从 1 开始，插入位置在指定行之前：
- `-i 1`: 插入到文件开头
- `-i 2`: 插入到第一行和第二行之间
- 超出范围的行号会追加到文件末尾

### Q5: 如何撤销操作？
**A**: 如果使用了备份选项（`-b`），可以从备份文件恢复：
```bash
# 恢复备份
cp target.txt.backup.20231201_143022 target.txt
```

### Q6: 脚本是否支持管道操作？
**A**: 当前版本不直接支持管道，但可以配合其他命令：
```bash
# 先创建临时文件，再使用脚本
echo "content" > temp.txt
./text_copy.sh -a temp.txt target.txt
rm temp.txt
```

## 🔗 相关命令

### 系统原生命令对比

| 功能 | 本脚本 | 系统命令 |
|------|--------|----------|
| 覆盖复制 | `./text_copy.sh -o src dst` | `cp src dst` |
| 追加内容 | `./text_copy.sh -a src dst` | `cat src >> dst` |
| 插入开头 | `./text_copy.sh -p src dst` | `cat src dst > temp && mv temp dst` |
| 备份复制 | `./text_copy.sh -b -o src dst` | `cp dst dst.bak && cp src dst` |

### 优势对比

**本脚本优势**：
- 统一的命令接口
- 自动备份功能
- 安全确认机制
- 详细的状态反馈
- 灵活的插入位置控制

**系统命令优势**：
- 更快的执行速度
- 更少的内存占用
- 更广泛的兼容性

## 📄 许可证

本项目采用 MIT 许可证，详情请查看 LICENSE 文件。

## 🤝 贡献

欢迎提交 Issue 和 Pull Request 来改进这个工具！

## 📞 支持

如果遇到问题或有建议，请：
1. 查看本文档的常见问题部分
2. 使用 `./text_copy.sh -h` 查看帮助
3. 运行 `./demo.sh` 查看演示示例

---

**版本**: 1.0.0  
**更新日期**: 2025年9月17日  
**兼容系统**: Ubuntu 16.04+, Debian 9+, CentOS 7+, 其他 Linux 发行版
