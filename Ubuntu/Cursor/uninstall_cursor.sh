#!/bin/bash

echo "开始彻底卸载Cursor..."

# 停止Cursor相关进程
pkill -f cursor
pkill -f Cursor

# 使用dpkg卸载
sudo dpkg -r cursor 2>/dev/null
sudo apt remove --purge cursor -y

# 删除所有相关文件和目录
sudo rm -rf /opt/Cursor/
sudo rm -rf /usr/share/applications/cursor.desktop
sudo rm -f /usr/bin/cursor
sudo rm -f /usr/local/bin/cursor

# 删除用户数据
rm -rf ~/.config/Cursor/
rm -rf ~/.cursor/
rm -rf ~/.cache/Cursor/
rm -rf ~/.local/share/Cursor/
rm -rf ~/snap/cursor/

# 清理系统
sudo apt autoremove -y
sudo apt autoclean -y

echo "Cursor已彻底卸载完成"

# 验证卸载
echo "验证卸载结果："
dpkg -l | grep cursor
ls -la /opt/ | grep -i cursor
ls -la ~/.config/ | grep -i cursor