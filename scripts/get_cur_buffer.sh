#!/usr/bin/env bash
tmux display -p "get-cur-buffer called"
DEBUG=$1
BUF_NAME="unknown"
main() {
  local SOCKET="$(tmux display -p "/tmp/nvim-#{pane_pid}")"
  BUF_NAME="$( nvim --server ${SOCKET} --remote-expr 'bufname("%:t")' )"
  if (( $DEBUG == 1 )); then 
    debug 
  fi
}

debug() {
  tmux display -p "SOCKET: ${SOCKET}"
}

main
