echo "\n[+] Connecting to andromeda..."
ssh -t andromeda "./update"
echo "\n[+] Connecting to apollo..."
ssh -t apollo "./update"
echo "\n[+] Connecting to pythagoras..."
ssh -t pythagoras "./update"
