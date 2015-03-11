servers=(andromeda apollo pythagoras euclid)
for server in ${servers[@]}
do
    echo "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "cd dot-files; git pull; ./install.sh; sudo -- sh -c 'cd ~/dot-files; git pull; ./install.sh'"
done
