echo "\n[+] Connecting to andromeda..."
ssh -t andromeda "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
echo "\n[+] Connecting to apollo..."
ssh -t apollo "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
echo "\n[+] Connecting to pythagoras..."
ssh -t pythagoras "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"

