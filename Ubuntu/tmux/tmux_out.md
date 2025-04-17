# Linux 系统 tmux如何输出
### 1. **在Tmux窗格中直接查看输出**
   在tmux的窗格中运行命令时，输出会直接显示在当前窗格中，与普通终端行为一致。
   ```bash
   # 示例：运行命令并查看实时输出
   ls -l
   tail -f /var/log/syslog
   ```

### 2. **将命令输出重定向到文件**
   使用Shell的重定向功能将输出保存到文件：
   ```bash
   # 将输出覆盖写入文件
   command > output.txt
   # 将输出追加到文件
   command >> output.txt
   # 同时显示输出并保存到文件
   command | tee output.txt
   ```

### 3. **捕获Tmux窗格的历史输出**
   使用`capture-pane`命令捕获当前窗格的输出内容：
   ```bash
   # 进入tmux命令模式（先按Ctrl-b，然后按:）
   :capture-pane -S -300  # 捕获从第300行开始到当前的内容
   :save-buffer output.txt  # 保存捕获的内容到文件
   ```
   或直接在终端执行：
   ```bash
   tmux capture-pane -p -S -1000 > output.txt  # 捕获最近1000行内容
   ```

### 4. **实时记录窗格输出到文件**
   使用`pipe-pane`命令实时记录输出：
   ```bash
   # 在tmux命令模式中执行
   :pipe-pane "cat >> output.txt"  # 开始记录
   :pipe-pane  # 再次执行以停止记录
   ```

### 5. **查看历史输出（滚动模式）**
   - 进入**复制模式**滚动查看历史输出：
     1. 按`Ctrl-b` + `[` 进入复制模式。
     2. 使用方向键、`PgUp`/`PgDn` 或鼠标滚轮滚动。
     3. 按 `q` 或 `Esc` 退出。

### 6. **记录整个Tmux会话**
   启动tmux时自动开始记录：
   ```bash
   tmux new-session -s mysession '/root/script -f output.txt'  # 使用script命令记录
   ```
   或在tmux会话中手动启动：
   ```bash
   script -f output.txt  # 开始记录，输入exit停止
   ```

### 7. **查看Tmux会话信息**
   - 列出所有会话：
     ```bash
     tmux list-sessions
     ```
   - 查看特定会话的窗口列表：
     ```bash
     tmux list-windows -t mysession
     ```

### 示例：从安装到记录输出的完整流程
1. **安装tmux**（如未安装）：
   ```bash
   sudo apt-get install tmux  # Debian/Ubuntu
   sudo yum install tmux      # CentOS/RHEL
   ```

2. **启动新会话**：
   ```bash
   tmux new -s my_session
   ```

3. **运行命令并实时记录输出**：
   ```bash
   :pipe-pane "cat >> ~/output.log"  # 在tmux命令模式输入
   ./long_running_script.sh          # 执行你的脚本
   ```

4. **停止记录**：
   再次执行 `:pipe-pane` 或关闭窗格。

### 注意事项
- **快捷键前缀**：默认情况下，tmux的前缀键是 `Ctrl-b`，后续操作需先按此组合。
- **窗格管理**：使用 `Ctrl-b %` 分割垂直窗格，`Ctrl-b "` 分割水平窗格。
- **日志路径**：确保输出文件的路径有写入权限。

通过上述方法，你可以灵活地在tmux中查看、保存和管理命令输出。根据具体需求选择合适的方式即可。