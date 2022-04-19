zstyle :compinstall filename $ZSHDOTDIR/.zshrc
fpath=(${ASDF_DIR}/completions ${ZDOTDIR}/completions $fpath)

autoload -Uz compinit; compinit

setopt menucomplete
setopt autolist
setopt globdots

zstyle ':completion:*' completer _complete _correct _approximate

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
