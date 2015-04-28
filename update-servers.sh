#!/bin/bash

servers=(andromeda apollo euclid gemini)
for server in ${servers[@]}
do
    echo -ne "\n[+] Connecting to $server..."
    ssh -o ConnectTimeout=5 -t $server "./update.sh"
done
