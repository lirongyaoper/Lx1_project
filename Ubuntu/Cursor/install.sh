#!/bin/bash

# Cursor动态版本安装脚本 for Ubuntu 24.04
# 描述: 自动检测并安装 ~/Downloads 目录下的Cursor安装包

set -e  # 遇到错误立即退出

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 目录配置
DOWNLOAD_DIR="/home/lirongyaoper/Downloads"

# 日志函数
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 检查下载目录
check_download_dir() {
    if [ ! -d "$DOWNLOAD_DIR" ]; then
        log_error "下载目录不存在: $DOWNLOAD_DIR"
        log_info "请检查路径或修改脚本中的 DOWNLOAD_DIR 变量"
        exit 1
    fi
    
    log_info "使用下载目录: $DOWNLOAD_DIR"
}

# 查找Cursor安装包
find_cursor_package() {
    log_info "在下载目录查找Cursor安装包..."
    
    # 切换到下载目录
    cd "$DOWNLOAD_DIR"
    
    # 查找以cursor开头，.deb结尾的文件
    local packages=($(ls -1 cursor*.deb 2>/dev/null))
    
    if [ ${#packages[@]} -eq 0 ]; then
        log_error "在 $DOWNLOAD_DIR 中未找到任何Cursor安装包 (.deb 文件)"
        log_info "支持的安装包格式: cursor*.deb"
        log_info "例如: cursor_2.0.69_amd64.deb, cursor_2.1.0_amd64.deb 等"
        echo
        log_info "请确保:"
        log_info "1. 安装包已下载到 $DOWNLOAD_DIR 目录"
        log_info "2. 文件名以 'cursor' 开头"
        log_info "3. 文件扩展名为 .deb"
        exit 1
    fi
    
    if [ ${#packages[@]} -gt 1 ]; then
        log_warn "找到多个Cursor安装包:"
        for i in "${!packages[@]}"; do
            echo "  $((i+1))) ${packages[$i]}"
        done
        
        read -p "请选择要安装的包 (1-${#packages[@]}): " choice
        if [[ $choice =~ ^[0-9]+$ ]] && [ $choice -ge 1 ] && [ $choice -le ${#packages[@]} ]; then
            selected_package="${packages[$((choice-1))]}"
        else
            log_error "无效选择"
            exit 1
        fi
    else
        selected_package="${packages[0]}"
    fi
    
    log_info "选择的安装包: $selected_package"
    echo "$selected_package"
}

# 检查安装包信息
check_package_info() {
    local package="$1"
    
    log_info "检查安装包信息..."
    
    # 检查文件是否存在
    if [ ! -f "$DOWNLOAD_DIR/$package" ]; then
        log_error "安装包不存在: $DOWNLOAD_DIR/$package"
        exit 1
    fi
    
    # 检查文件大小
    local file_size=$(stat -c%s "$DOWNLOAD_DIR/$package" 2>/dev/null || stat -f%z "$DOWNLOAD_DIR/$package")
    log_info "安装包大小: $((file_size/1024/1024))MB"
    
    # 显示包信息
    if command -v dpkg-deb &>/dev/null; then
        log_info "包信息:"
        dpkg-deb -I "$DOWNLOAD_DIR/$package" | grep -E "(Package|Version|Architecture|Description)" | head -10
    else
        log_warn "无法显示详细包信息 (dpkg-deb 不可用)"
    fi
}

# 检查是否具有sudo权限
check_sudo() {
    if ! sudo -n true 2>/dev/null; then
        log_info "需要sudo权限，请输入密码..."
        if ! sudo -v; then
            log_error "无法获取sudo权限"
            exit 1
        fi
    fi
}

# 安装依赖
install_dependencies() {
    log_info "更新软件包列表..."
    sudo apt update
    
    log_info "修复依赖关系..."
    sudo apt install -f -y
}

# 安装Cursor
install_cursor() {
    local package="$1"
    
    log_info "开始安装: $package"
    
    # 切换到下载目录并安装
    cd "$DOWNLOAD_DIR"
    
    # 安装deb包
    if sudo dpkg -i "$package"; then
        log_info "dpkg安装成功"
    else
        log_warn "安装过程中出现依赖问题，尝试修复..."
        sudo apt install -f -y
    fi
}

# 验证安装
verify_installation() {
    log_info "验证安装..."
    
    # 检查包状态
    local installed_package=$(dpkg -l | grep -E "^ii.*cursor" | awk '{print $2}')
    
    if [ -n "$installed_package" ]; then
        log_info "已安装的Cursor包: $installed_package"
        dpkg -l | grep -E "^ii.*cursor"
    else
        log_warn "未找到已安装的Cursor包"
    fi
    
    # 检查命令是否存在
    if which cursor &>/dev/null; then
        log_info "Cursor命令路径: $(which cursor)"
    else
        log_warn "未找到cursor命令"
    fi
    
    # 检查版本
    if command -v cursor &>/dev/null; then
        log_info "Cursor版本信息:"
        cursor --version || log_info "无法获取版本信息"
    else
        log_warn "无法执行cursor命令"
    fi
}

# 显示完成信息
show_completion() {
    echo
    log_info "=== 安装完成 ==="
    echo
    echo "启动方式:"
    echo "  命令行: cursor"
    echo "  应用程序菜单中搜索: Cursor"
    echo "  桌面快捷方式: 可能在开发或编程分类中"
    echo
    log_info "如果遇到启动问题，请尝试重新登录系统或重启"
}

# 清理安装包（可选）
cleanup_package() {
    local package="$1"
    
    echo
    read -p "安装完成，是否删除安装包 $package? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -f "$DOWNLOAD_DIR/$package"
        log_info "已删除安装包: $DOWNLOAD_DIR/$package"
    else
        log_info "保留安装包: $DOWNLOAD_DIR/$package"
    fi
}

# 主函数
main() {
    echo
    log_info "=== Cursor 动态版本安装脚本 ==="
    log_info "安装包目录: $DOWNLOAD_DIR"
    echo
    
    # 显示帮助
    if [[ "$1" == "--help" || "$1" == "-h" ]]; then
        echo "用法: $0"
        echo "功能: 自动检测并安装 $DOWNLOAD_DIR 目录下的Cursor安装包"
        echo "支持: 自动识别不同版本的安装包文件名"
        echo "示例安装包名称:"
        echo "  cursor_2.0.69_amd64.deb"
        echo "  cursor_2.1.0_amd64.deb" 
        echo "  cursor-latest_amd64.deb"
        echo "  cursor_2.0.70-1_amd64.deb"
        exit 0
    fi
    
    # 检查下载目录
    check_download_dir
    
    # 查找安装包
    package=$(find_cursor_package)
    
    # 显示包信息
    check_package_info "$package"
    
    # 确认安装
    echo
    log_warn "即将安装: $package"
    log_info "完整路径: $DOWNLOAD_DIR/$package"
    read -p "是否继续? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log_info "安装已取消"
        exit 0
    fi
    
    # 执行安装步骤
    check_sudo
    install_dependencies
    install_cursor "$package"
    verify_installation
    show_completion
    
    # 可选清理
    cleanup_package "$package"
}

# 运行主函数
main "$@"