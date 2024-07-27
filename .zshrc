# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/evak/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set PATH first in case other scriplets depend on it
[[ -f $HOME/.shrc.d/path.sh ]] && source $HOME/.shrc.d/path.sh

for f in $HOME/.shrc.d/*; do
	# Avoid appending to PATH twice
	[[ $(basename $f) == 'path.sh' ]] && continue

	if [[ -f $HOME/.shrc.d/$(basename $f) ]]; then
		source $HOME/.shrc.d/$(basename $f)
	fi
done;

export PS1=" 🛸 "
