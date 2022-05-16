fpath=("$HOME/.local/share/zsh/site-functions" $fpath)

source $ZDOTDIR/zkbdhash.zsh
autoload -Uz promptinit colors
promptinit && colors

#PURE_ALWAYS_SHOW_USER=1
prompt pure

eval "$(dircolors -b)"

source "$ZDOTDIR/completions.zsh"
#source "$ZDOTDIR/prompt.zsh"

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

alias show_path='echo "${PATH//:/$\n}"'
alias ls="ls --color=auto -1"
alias ll="ls -alh --block-size=M"
alias mc="mc -u -X"
alias v="vim"
alias e="vim"

#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# npm comletions
source $ZDOTDIR/completions/npm.zsh

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

