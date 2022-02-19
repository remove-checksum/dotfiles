autoload -Uz promptinit colors
promptinit && colors

eval "$(dircolors -b)"

source "$ZDOTDIR/completions.zsh"
source "$ZDOTDIR/prompt.zsh"

setopt histignorealldups 
setopt sharehistory
setopt autocd
setopt autopushd          # Push the current directory visited on the stack.
setopt pushdignoredups    # Do not store duplicates in the stack.
setopt pushdsilent        # Do not print the directory stack after pushd or popd.

bindkey -e
bindkey ';5D' backward-word
bindkey ';5C' forward-word
bindkey '\e[3~'   delete-char
bindkey '^A'      beginning-of-line
bindkey '^E'      end-of-line

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$ZDOTDIR/.zsh_history"

alias pretty_path='echo "${PATH//:/$\n}"'
alias ll='ls -al'

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# GWSL
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}')
export LIBGL_ALWAYS_INDIRECT=1

if [[ -f ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] ; then
    source ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
