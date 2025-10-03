#!/bin/bash

# 文本复制工具脚本
# 功能：将一份文本的内容复制到另一个文本文件
# 支持：覆盖、追加、插入等操作模式

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 显示帮助信息
show_help() {
    echo -e "${BLUE}文本复制工具 - 使用说明${NC}"
    echo ""
    echo "用法: $0 [选项] <源文件> <目标文件>"
    echo ""
    echo "选项:"
    echo "  -o, --overwrite    覆盖目标文件（默认）"
    echo "  -a, --append       追加到目标文件末尾"
    echo "  -p, --prepend      插入到目标文件开头"
    echo "  -i, --insert LINE  插入到指定行号"
    echo "  -b, --backup       操作前备份目标文件"
    echo "  -f, --force        强制执行，不询问确认"
    echo "  -h, --help         显示此帮助信息"
    echo ""
    echo "示例:"
    echo "  $0 source.txt target.txt                    # 覆盖模式"
    echo "  $0 -a source.txt target.txt                 # 追加模式"
    echo "  $0 -p source.txt target.txt                 # 插入到开头"
    echo "  $0 -i 10 source.txt target.txt              # 插入到第10行"
    echo "  $0 -b -a source.txt target.txt              # 追加模式并备份"
}

# 错误处理函数
error_exit() {
    echo -e "${RED}错误: $1${NC}" >&2
    exit 1
}

# 成功信息函数
success_msg() {
    echo -e "${GREEN}✓ $1${NC}"
}

# 警告信息函数
warning_msg() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

# 信息函数
info_msg() {
    echo -e "${BLUE}ℹ $1${NC}"
}

# 确认函数
confirm() {
    if [[ "$FORCE" == "true" ]]; then
        return 0
    fi
    
    local prompt="$1"
    echo -n -e "${YELLOW}$prompt (y/N): ${NC}"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

# 备份文件函数
backup_file() {
    local file="$1"
    if [[ -f "$file" ]]; then
        local backup_name="${file}.backup.$(date +%Y%m%d_%H%M%S)"
        cp "$file" "$backup_name"
        success_msg "已备份到: $backup_name"
    fi
}

# 覆盖模式
overwrite_mode() {
    local source="$1"
    local target="$2"
    
    if [[ -f "$target" ]]; then
        if ! confirm "目标文件已存在，是否覆盖？"; then
            info_msg "操作已取消"
            exit 0
        fi
        
        if [[ "$BACKUP" == "true" ]]; then
            backup_file "$target"
        fi
    fi
    
    cp "$source" "$target" || error_exit "覆盖文件失败"
    success_msg "已成功覆盖文件: $target"
}

# 追加模式
append_mode() {
    local source="$1"
    local target="$2"
    
    if [[ "$BACKUP" == "true" && -f "$target" ]]; then
        backup_file "$target"
    fi
    
    cat "$source" >> "$target" || error_exit "追加文件失败"
    success_msg "已成功追加内容到文件: $target"
}

# 插入到开头模式
prepend_mode() {
    local source="$1"
    local target="$2"
    
    if [[ "$BACKUP" == "true" && -f "$target" ]]; then
        backup_file "$target"
    fi
    
    local temp_file=$(mktemp)
    cat "$source" > "$temp_file" || error_exit "创建临时文件失败"
    
    if [[ -f "$target" ]]; then
        cat "$target" >> "$temp_file" || error_exit "合并文件失败"
    fi
    
    mv "$temp_file" "$target" || error_exit "移动文件失败"
    success_msg "已成功插入内容到文件开头: $target"
}

# 插入到指定行模式
insert_mode() {
    local source="$1"
    local target="$2"
    local line_num="$3"
    
    # 验证行号
    if ! [[ "$line_num" =~ ^[0-9]+$ ]]; then
        error_exit "行号必须是正整数"
    fi
    
    if [[ "$BACKUP" == "true" && -f "$target" ]]; then
        backup_file "$target"
    fi
    
    local temp_file=$(mktemp)
    
    if [[ -f "$target" ]]; then
        # 获取目标文件总行数
        local total_lines=$(wc -l < "$target")
        
        if [[ "$line_num" -gt "$((total_lines + 1))" ]]; then
            warning_msg "指定行号($line_num)超过文件行数($total_lines)，将追加到文件末尾"
            append_mode "$source" "$target"
            return
        fi
        
        # 分割文件并插入内容
        if [[ "$line_num" -eq 1 ]]; then
            # 插入到第一行
            cat "$source" > "$temp_file"
            cat "$target" >> "$temp_file"
        else
            # 插入到中间
            head -n "$((line_num - 1))" "$target" > "$temp_file"
            cat "$source" >> "$temp_file"
            tail -n +"$line_num" "$target" >> "$temp_file"
        fi
    else
        # 目标文件不存在，直接复制源文件
        cat "$source" > "$temp_file"
    fi
    
    mv "$temp_file" "$target" || error_exit "移动文件失败"
    success_msg "已成功插入内容到第 $line_num 行: $target"
}

# 初始化变量
MODE="overwrite"
BACKUP="false"
FORCE="false"
INSERT_LINE=""

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case $1 in
        -o|--overwrite)
            MODE="overwrite"
            shift
            ;;
        -a|--append)
            MODE="append"
            shift
            ;;
        -p|--prepend)
            MODE="prepend"
            shift
            ;;
        -i|--insert)
            MODE="insert"
            INSERT_LINE="$2"
            shift 2
            ;;
        -b|--backup)
            BACKUP="true"
            shift
            ;;
        -f|--force)
            FORCE="true"
            shift
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        -*)
            error_exit "未知选项: $1"
            ;;
        *)
            break
            ;;
    esac
done

# 检查参数数量
if [[ $# -lt 2 ]]; then
    error_exit "缺少必要参数。使用 -h 查看帮助信息"
fi

SOURCE_FILE="$1"
TARGET_FILE="$2"

# 验证源文件
if [[ ! -f "$SOURCE_FILE" ]]; then
    error_exit "源文件不存在: $SOURCE_FILE"
fi

if [[ ! -r "$SOURCE_FILE" ]]; then
    error_exit "无法读取源文件: $SOURCE_FILE"
fi

# 创建目标文件目录（如果不存在）
TARGET_DIR=$(dirname "$TARGET_FILE")
if [[ ! -d "$TARGET_DIR" ]]; then
    mkdir -p "$TARGET_DIR" || error_exit "无法创建目录: $TARGET_DIR"
fi

# 显示操作信息
info_msg "源文件: $SOURCE_FILE"
info_msg "目标文件: $TARGET_FILE"
info_msg "操作模式: $MODE"

if [[ "$BACKUP" == "true" ]]; then
    info_msg "备份模式: 启用"
fi

echo ""

# 根据模式执行操作
case "$MODE" in
    "overwrite")
        overwrite_mode "$SOURCE_FILE" "$TARGET_FILE"
        ;;
    "append")
        append_mode "$SOURCE_FILE" "$TARGET_FILE"
        ;;
    "prepend")
        prepend_mode "$SOURCE_FILE" "$TARGET_FILE"
        ;;
    "insert")
        if [[ -z "$INSERT_LINE" ]]; then
            error_exit "插入模式需要指定行号"
        fi
        insert_mode "$SOURCE_FILE" "$TARGET_FILE" "$INSERT_LINE"
        ;;
    *)
        error_exit "未知操作模式: $MODE"
        ;;
esac

# 显示最终结果
if [[ -f "$TARGET_FILE" ]]; then
    local file_size=$(stat -c%s "$TARGET_FILE")
    local line_count=$(wc -l < "$TARGET_FILE")
    echo ""
    info_msg "操作完成！"
    info_msg "目标文件大小: $file_size 字节"
    info_msg "目标文件行数: $line_count 行"
fi
