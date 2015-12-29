#!/bin/bash

servers=(andromeda apollo euclid centauri)
for server in ${servers[@]}
do
    echo -e "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "./update.sh"
done
