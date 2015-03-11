servers=(andromeda apollo pythagoras)
for server in $servers
do
    echo "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "./update.sh"
done
