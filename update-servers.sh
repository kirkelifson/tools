servers=(andromeda apollo pythagoras euclid)
for server in $servers
do
    echo "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "./update.sh"
done
