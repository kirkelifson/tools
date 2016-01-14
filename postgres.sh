#!/bin/bash
if [[ $1 != "" ]];
then
    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log $1
else
    echo "Usage: ./postgres [start|stop]"
fi
