#!/bin/bash

tmux kill-server
cd MLH-project-vitrina
git fetch && git reset origin/main --hard
 
source python3-virtualenv/bin/activate  

pip install -r requirements.txt

tmux new-session -d -s cindy-website

tmux attach-session -t cindy-website

source python3-virtualenv/bin/activate

flask run --host=0.0.0.0
tmux detach -s cindy-website






