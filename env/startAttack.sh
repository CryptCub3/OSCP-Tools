#!/bin/bash
mkdir www nmap web loot crack
touch creds.txt
sudo neo4j start
tmux new-session -d -s 'attacker'
tmux split-window -v
tmux split-window -h "cd www && python3 -m http.server 8000"
tmux split-window -v "impacket-smbserver -smb2support share www"
tmux split-window -v 
tmux new-window "cd www & wsgidav --host=0.0.0.0 --port=80 --auth=anonymous --root $(pwd)"
tmux split-window -v "rlwrap nc -lvnp 443"
tmux new-window burpsuite
tmux new-window firefox 
tmux new-window bloodhound
tmux -2 attach-session -d
