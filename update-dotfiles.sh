#!/bin/bash

servers=(andromeda apollo euclid gemini centauri hlds seedbox)
for server in ${servers[@]}
do
    echo -e "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
done
