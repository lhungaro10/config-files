# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# zstyle ':omz:update' mode auto      # update automatically without asking


DISABLE_MAGIC_FUNCTIONS="true"

# Example aliases
# alias zshconfig="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Personal aliases
alias cls="clear"
alias arq="cd /mnt/arq/"

alias zshconfig="code ~/.zshrc"
alias zsh="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias dk="code /mnt/arq/dk-automacoes/dk-automacoes.code-workspace"

alias py="python3"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # autojump
  # urltools
  # bgnotify

  # z
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-enquirer
  # colorize
  command-not-found
  common-aliases
  # dirhistory
  aliases
  # kitty 
  # sudo
  vscode
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# Plugins settings
ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases


#personal configs
bindkey '^H' backward-kill-word

#exports

export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"

export ANDROID_HOME=/mnt/arq/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$JAVA_HOME/bin:$PATH"
export PATH=$PATH:/home/hungaro/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$(go env GOROOT)/bin

# pnpm
export PNPM_HOME="/home/hungaro/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"
