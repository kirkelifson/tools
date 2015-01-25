echo "\n[+] Connecting to andromeda..."
ssh -o ConnectTimeout=5 -t andromeda "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
echo "\n[+] Connecting to apollo..."
ssh -o ConnectTimeout=5 -t apollo "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
echo "\n[+] Connecting to pythagoras..."
ssh -o ConnectTimeout=5 -t pythagoras "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"

