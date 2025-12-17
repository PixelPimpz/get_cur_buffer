#!/usr/bin/env bash
THIS="$0"
YQBIN='/usr/bin/yq'
ICONS="$1"
#cat "$ICONS"
yq e '.icons.system.txtdoc' $ICONS
