#~/.zshrc - Default configuration for macOS 15.5 (no aliases)

# Set up the PATH environment variable:
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

#if Homebrew is installed use these:
export PATH="/opt/homebrew/bin:$PATH"

#user installed tools path:
export PATH="/usr/local/bin:$PATH"

# Only run the following if we're in zsh
if [[ -n $ZSH_VERSION ]]; then
  # Enable command auto-correction
  setopt CORRECT
  setopt autocd
  setopt extendedglob

  # Enable command completion
  autoload -Uz compinit
  compinit

  # Case insensitive completion matcher:
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*'
  
  # Set up history options
  HISTFILE=~/.zsh_history
  HISTSIZE=1000
  SAVEHIST=1000

  # Enable color support for ls and grep
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced

  # Source user-specific scripts if present (optional)
  # [ -f ~/.zsh_custom ] && source ~/.zsh_custom

  # The following lines have been added by Docker Desktop to enable Docker CLI completions.
  fpath=(/Users/devilskitchen/.docker/completions $fpath)
  autoload -Uz compinit
  compinit
fi


