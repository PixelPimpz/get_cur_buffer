#!/usr/bin/env b
tmux set-hook -g pane-focus-in[0] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g session-created[0] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g session-window-changed[0] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g after-new-window[1] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g after-new-session[1] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g sessions-changed[1] 'run "#{@PLUG_ROOT}/get_cur_buffer'
tmux set-hook -g after-refr-client[11] 'display -p "${TMUX_ROOT}/tmux.conf reloaded'
