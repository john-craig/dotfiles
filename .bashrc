#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Set PATH first in case other scriplets depend on it
[[ -f $HOME/.bashrc.d/path.sh ]] && source $HOME/.bashrc.d/path.sh

for f in $HOME/.bashrc.d/*; do
	# Avoid appending to PATH twice
	[[ $(basename $f) == 'path.sh' ]] && continue

	if [[ -f $HOME/.bashrc.d/$(basename $f) ]]; then
		source $HOME/.bashrc.d/$(basename $f)
	fi
done;


export PS1=" 🛸 "
