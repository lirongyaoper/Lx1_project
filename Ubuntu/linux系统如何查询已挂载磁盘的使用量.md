在 Linux 系统中，查询已挂载磁盘的使用量可以通过以下命令和步骤实现：

---

### **1. 使用 `df` 命令（推荐）**
`df`（Disk Filesystem）是查看磁盘空间使用情况最常用的命令。

#### **(1) 查看所有挂载磁盘的基本信息**
```bash
df -h
```
- **`-h`**：以人类可读的格式显示（如 GB、MB）。
- **输出列说明**：
  - `Filesystem`：磁盘设备或分区名称（如 `/dev/sda1`）。
  - `Size`：总容量。
  - `Used`：已用空间。
  - `Avail`：剩余可用空间。
  - `Use%`：使用百分比。
  - `Mounted on`：挂载点路径（如 `/`、`/home`）。

#### **(2) 筛选特定文件系统类型**
排除临时文件系统（如 `tmpfs`）：
```bash
df -h -x tmpfs -x devtmpfs
```

#### **(3) 仅显示物理磁盘（排除伪文件系统）**
```bash
df -h --type=ext4 --type=xfs  # 根据实际文件系统类型调整
```

#### **(4) 显示特定挂载点的信息**
```bash
df -h /home  # 查看 `/home` 目录的磁盘使用情况
```

---

### **2. 使用 `lsblk` 命令**
`lsblk` 可以列出所有块设备（包括未挂载的磁盘），并显示挂载点及空间信息。
```bash
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,USED,AVAIL
```
- **`-o`**：指定输出的列（如 `NAME` 设备名、`MOUNTPOINT` 挂载点、`USED` 已用空间等）。

---

### **3. 使用 `du` 命令（查看目录占用空间）**
`du`（Disk Usage）用于查看目录或文件的磁盘使用量。

#### **(1) 查看当前目录的磁盘使用量**
```bash
du -sh
```
- **`-s`**：汇总显示总大小。
- **`-h`**：以人类可读格式显示。

#### **(2) 查看指定目录的磁盘使用量**
```bash
du -sh /path/to/directory
```
示例：
```bash
du -sh /home  # 查看 `/home` 目录的总大小
```

#### **(3) 递归查看目录内各子目录的大小**
```bash
du -h --max-depth=1 /path/to/directory
```
- **`--max-depth=1`**：仅显示一级子目录的占用情况。

---

### **4. 使用 `mount` 命令（查看挂载点）**
```bash
mount | grep "^/dev"
```
- 列出所有已挂载的物理设备及其挂载点。

---

### **5. 图形化工具（可选）**
#### **(1) `ncdu`（终端交互式工具）**
安装：
```bash
sudo apt install ncdu  # Debian/Ubuntu
sudo yum install ncdu  # CentOS/RHEL
```
使用：
```bash
ncdu /  # 扫描根目录并按大小排序
```

#### **(2) GNOME Disks 或 KDE Partition Manager**
适用于桌面环境，提供图形化界面查看磁盘信息。

---

### **6. 监控实时磁盘使用**
#### **(1) `iotop`（监控磁盘 I/O）**
```bash
sudo iotop
```

#### **(2) `dstat`（综合监控工具）**
```bash
dstat -d  # 显示磁盘读写速度
```

---

### **总结**
| **场景**               | **命令**                          |
|-----------------------|-----------------------------------|
| 快速查看所有磁盘空间    | `df -h`                          |
| 查看目录占用空间        | `du -sh /path/to/directory`      |
| 列出块设备及挂载点      | `lsblk` 或 `mount \| grep "^/dev"` |
| 交互式分析目录大小      | `ncdu`                           |
| 实时监控磁盘 I/O        | `iotop` 或 `dstat -d`            |

通过以上命令，可以快速掌握 Linux 系统中磁盘的使用情况！