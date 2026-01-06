#!/usr/bin/env bash
outfile="$1"
main {
  for keybind in "$( tmux list-keys | grep 'next-window' | grep -iv 'wheel' )"; do
    echo "$keybind" | awk '{printf "bind-key %-4s %s \\; %s\n", $4, $5, "source-file ~/.tmux.conf" }' >> $outfile 
  done
}

main

