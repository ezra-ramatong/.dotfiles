# Aliases

# Hyprland
alias H='Hyprland'
alias hyprconf='cd ~/.config/hypr/ && vim hyprland.conf'
alias hyprkeys='cd ~/.config/hypr/ && vim keybinds.conf'

# General
alias la='ls -la'
alias ls='ls --color=auto'
alias md='mkdir'
alias rb='reboot'
alias sn='shutdown now'
alias vim='nvim'

# fzf
alias ff='cd ~ && ~/.local/bin/explorer.sh'
alias sd='cd ~ && cd $(fd --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude go/pkg/ --exclude .cargo --exclude .rustup --exclude .nvm| fzf --height=70% --border=rounded )'

# Network Manager
alias wifi='nmtui'

# Config Files
alias zshrc='cd ~/.config/zsh/ && vim .zshrc'
alias szsh='exec zsh'

# Package Managers

alias cu='~/.local/bin/checkupdates.sh' # check updates
alias upl='~/.local/bin/update-package-list.sh' # update package lists

# Pacman
alias pac='sudo pacman -S'
alias pacrs='sudo pacman -Rs'
alias pacu='sudo pacman -Syu'

# Yay 
alias yayu='yay -Syu'
alias yayrs='yay -Rs'

# Git
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gc='git commit'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gl='git log'
alias glo='git log --pretty="oneline"'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gpo='git push origin'
alias gposu='git push origin --set-upstream'
alias grmr='git rm -r'
alias gs='git status'

# Dunst
alias dln='dunstctl history-pop'

# Custom
alias music='firefox "https://music.youtube.com"'
