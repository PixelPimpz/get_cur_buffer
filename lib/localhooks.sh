#!/usr/bin/env bash
tmux set-hook -g pane-focus-in[0] 'run "#{@PLUG_ROOT}/get_cur_buffer' 
tmux set-hook -g pane-exited[0] 'run "#{@PLUG_ROOT}/get_cur_buffer"'
