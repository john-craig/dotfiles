#!/bin/zsh

# Set Ctrl+Shift+C as the cut hotkey
w-kill-region () {
  zle kill-region
  print -rn $CUTBUFFER | wl-copy
}
zle -N w-kill-region

bindkey -e '^x' w-kill-region

