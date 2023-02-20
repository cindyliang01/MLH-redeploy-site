
#!/bin/bash

tmux kill-session -t $session
cd MLH-project-vitrina
git fetch && git reset origin/main --hard
 
python -m venv python3-virtualenv
source python3-virtualenv/bin/activate  

pip install -r requirements.txt

dnf install tmux
tmux new

tmux list-sessions
tmux attach-session -t SESSION_NAME

flask run