export ZSH="$HOME/.oh-my-zsh"

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)


eval "$(starship init zsh)"

# SSH-Agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

#Binds
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Personal aliases
alias cls="clear"
alias arq="cd /mnt/arq/"
alias la="ls -la"

alias zshconfig="code ~/.zshrc"
alias zsh="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias hyprconfig="code ~/.config/hypr/hyprland.conf"
alias wayrelod="killall -SIGUSR2 waybar"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
plugins=(
  zsh-history-enquirer

  git
  vscode
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# Variables
## Config TeX Live 2026
export PATH="/usr/local/texlive/2026/bin/x86_64-linux:$PATH"
export MANPATH="/usr/local/texlive/2026/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2026/texmf-dist/doc/info:$INFOPATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
