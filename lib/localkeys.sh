#!/usr/bin/env bash
for keybind in "$( tmux list-keys | grep 'next-window' | grep -iv 'wheel' )"; do
  echo "$keybind" | awk '{printf "bind-key %-4s %s \\; %s\n", $4, $5, "added-command" }' >> ~/temp-tmux.log
done

echo "date +%l:%M:%S localkeys..." >> ~/temp-tmux.log
tmux display  "localkeys.sh running..."
