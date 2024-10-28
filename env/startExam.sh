#!/bin/bash
sudo neo4j start
tmux new-session -d -s 'exam'
tmux split-window -v
tmux split-window -h "cd www && python3 -m http.server 8000"
tmux split-window -v "impacket-smbserver -smb2support share www"
tmux split-window -v 
tmux new-window "sudo responder -I tun0"
tmux split-window -v "rlwrap nc -lvnp 443"
tmux new-window burpsuite
tmux new-window firefox 
tmux new-window bloodhound
tmux -2 attach-session -d
