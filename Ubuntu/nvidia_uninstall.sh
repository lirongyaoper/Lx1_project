#!/bin/bash

# NVIDIA显卡驱动卸载脚本
# 注意：此操作需要管理员权限

echo "=================================================="
echo "        NVIDIA显卡驱动卸载脚本"
echo "=================================================="
echo "警告：此操作将完全卸载NVIDIA显卡驱动！"
echo "请在继续前保存所有工作并关闭相关应用程序。"
echo "=================================================="
echo ""

# 检查是否为root用户
if [ "$EUID" -ne 0 ]; then
    echo "请使用sudo或以root用户身份运行此脚本"
    echo "使用方法: sudo ./uninstall_nvidia.sh"
    exit 1
fi

# 函数：执行命令并等待用户确认
execute_step() {
    local step_number=$1
    local command=$2
    local description=$3
    
    echo ""
    echo "步骤 $step_number: $description"
    echo "即将执行: $command"
    echo ""
    read -p "按 Enter 键继续执行此步骤..."
    
    # 执行命令
    echo "执行中..."
    eval $command
    
    local exit_code=$?
    if [ $exit_code -eq 0 ]; then
        echo "✓ 步骤 $step_number 完成: $description"
    else
        echo "⚠ 步骤 $step_number 返回退出码: $exit_code"
        read -p "是否继续执行后续步骤？(y/n): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "脚本已中止"
            exit 1
        fi
    fi
    echo "----------------------------------------"
}

# 开始执行卸载步骤
echo "开始执行NVIDIA驱动卸载流程..."

# 步骤1: 停止显示管理器
execute_step "1" "systemctl stop gdm" "停止GNOME显示管理器服务"

# 步骤2: 运行官方卸载工具
execute_step "2" "/usr/bin/nvidia-uninstall" "运行NVIDIA官方卸载程序"

# 步骤3: 删除NVIDIA库文件
execute_step "3" "rm -rf /usr/lib/nvidia*" "删除/usr/lib下的NVIDIA库文件"

# 步骤4: 删除x86架构的NVIDIA库文件
execute_step "4" "rm -rf /usr/lib/x86_64-linux-gnu/nvidia*" "删除x86_64架构的NVIDIA库文件"

# 步骤5: 删除NVIDIA内核模块配置
execute_step "5" "rm -rf /etc/modprobe.d/nvidia*" "删除NVIDIA内核模块配置文件"

# 步骤6: 删除X11配置文件
execute_step "6" "rm -rf /etc/X11/xorg.conf.d/nvidia*" "删除X11显示服务器的NVIDIA配置文件"

# 步骤7: 删除DKMS模块
execute_step "7" "rm -rf /var/lib/dkms/nvidia*" "删除NVIDIA的DKMS内核模块"

# 步骤8: 删除GLVND供应商配置
execute_step "8" "rm -rf /usr/share/glvnd/egl_vendor.d/10_nvidia.json" "删除OpenGL供应商配置"

echo ""
echo "=================================================="
echo "        NVIDIA驱动卸载完成！"
echo "=================================================="
echo "建议操作："
echo "1. 重启系统: sudo reboot"
echo "2. 检查驱动是否已卸载: nvidia-smi"
echo "3. 如果需要，重新安装驱动"
echo "=================================================="