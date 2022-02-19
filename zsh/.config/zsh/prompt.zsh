autoload -Uz vcs_info

setopt promptsubst

# xterm256 color chart https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

precmd() { vcs_info }
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{1}*%f'
zstyle ':vcs_info:*' stagedstr '%F{green}+%f'
zstyle ':vcs_info:*' formats '%F{3}%r at %b [%u%c%F{3}]'

PROMPT='%F{cyan}%~ %(?.%F{white}.%F{red})%#%f '
RPROMPT='$vcs_info_msg_0_'