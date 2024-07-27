#
# ~/.zprofile
#

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec Hyprland
fi

[[ -f ~/.zshrc ]] && . ~/.zshrc
