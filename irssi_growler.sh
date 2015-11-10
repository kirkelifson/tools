#!/bin/bash

(ssh andromeda -o PermitLocalCommand=no \
    ": > .irssi/fnotify; tail -f .irssi/fnotify " | \
    while read heading message; do
        growlnotify -s -t "${heading}" -m "${message}";
    done)&
