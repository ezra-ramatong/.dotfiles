XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"

export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"

# Default Programs
export EDITOR="nvim"
export VISUAL="$EDITOR"
export TERMINAL="alacritty"
export BROWSER="firefox"
export GIT_EDITOR="$EDITOR"
export QT_QPA_PLATFORMTHEME="qt6ct"

# Fzf
#export FZF_DEFAULT_COMMAND='fd . --hidden --exclude ".git"'
#export FZF_DEFAULT_OPTS="-i --height=80% --border=rounded --preview=tree {}"

# C++ Compiler ENV
export CPLUS_INCLUDE_PATH="/home/ezra/Qt/6.7.0/gcc_64/include"

# PATHS
export PATH="$PATH:$HOME/.local/bin"
