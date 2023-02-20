
#!/bin/bash

tmux kill-server
cd MLH-project-vitrina
git fetch && git reset origin/main --hard
 
source python3-virtualenv/bin/activate  

pip install -r requirements.txt

tmux new-session -s cindy-website

flask run --host=0.0.0.0

tmux detach