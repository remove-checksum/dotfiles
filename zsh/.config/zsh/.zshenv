export COLORTERM=truecolor
export ZDOTDIR=~/.config/zsh
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.cache

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# asdf version manager
. "$HOME/.asdf/asdf.sh"

# Cargo
. "$HOME/.cargo/env"

# nvim lsp-servers
if [ -d "$HOME/.local/bin" ] ; then
   PATH="$HOME/.local/share/nvim/lsp_servers:$PATH"
fi

