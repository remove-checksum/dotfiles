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

alias show_path='echo "${PATH//:/$\n}"'
alias ls="ls --color=auto -1"
alias ll="ls -alh --block-size=M"
alias mc="mc -u -X"
alias v="vim"
alias e="vim"
alias wsopen="wslview "

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# GWSL
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}')
export LIBGL_ALWAYS_INDIRECT=1

if [[ -f ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] ; then
    source ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# opam configuration
[[ ! -r /home/owo/.opam/opam-init/init.zsh ]] || source /home/owo/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    if ! IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)); then
      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    if ! IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)); then

      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###
