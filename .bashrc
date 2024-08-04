#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set PATH first in case other scriplets depend on it
[[ -f $HOME/.shrc.d/path.sh ]] && source $HOME/.shrc.d/path.sh

for f in $HOME/.shrc.d/*.sh; do
	# Avoid appending to PATH twice
	[[ $(basename $f) == 'path.sh' ]] && continue

	if [[ -f $HOME/.shrc.d/$(basename $f) ]]; then
		source $HOME/.shrc.d/$(basename $f)
	fi
done;


export PS1=" 🛸 "
