autoload -Uz add-zsh-hook
autoload -Uz compinit
compinit
autoload -Uz vcs_info
precmd() { vcs_info }

# VCS
zstyle ':vcs_info:git:*' formats '%b '
# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '( %b%u%c)'
zstyle ':vcs_info:git:*' actionformats '( %b|%a%u%c)'

# Completion
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/ezra/.config/zsh/.zcompdump'


# Options
autoload -Uz colors && colors
setopt PROMPT_SUBST
PROMPT='%B%F{yellow}%F{yellow}Ezra%f %F{red}on%f %B%F{blue}󰇧 %f%b %F{green}%B:%b%f '
RPROMPT='%F{blue}%~%f %F{red} ${vcs_info_msg_0_}%f'
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd
setopt auto_menu
setopt menu_complete
unsetopt beep
bindkey -v

# Aliases
source $HOME/.config/zsh/aliases.zsh

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Plugins
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # must be last

# Startup Greetings
~/.local/bin/greetings Ezra
~/.local/bin/pithy

#eval "$(zoxide init --cmd cd zsh)"
