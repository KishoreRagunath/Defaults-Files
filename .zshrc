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


# Created by `pipx` on 2025-10-21 15:59:47
export PATH="$PATH:/Users/black_bulls/go/bin"
export PATH="$PATH:/Users/black_bulls/.local/bin"

source /Users/black_bulls/go/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/gf-completion.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls="ls -la"
alias lh="ls -lah"
alias clr="clear"

alias zshrc="nano $HOME/.zshrc"
alias szsh="source $HOME/.zshrc"

alias update="brew upgrade && brew update"
alias document="cd $HOME/Documents" 
alias downlod="cd $HOME/Downloads" 
alias desk="cd $HOME/Desktop" 

alias vpn="openvpn $HOME/Documents/kishore.ragunath.ovpn" 
alias doc="docker start ubuntu && docker exec -it ubuntu bash"

alias ip="ifconfig | awk '/^(en[0-9]+|utun[0-9]+):/ {i=1} i && /inet / {print $2; i=0}'"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

alias Corsy='python3 "/Users/black_bulls/Corsy/corsy.py"'
alias XSStrike='python3 "/Users/black_bulls/XSStrike/xsstrike.py"'
alias SecretFinder='python3 "/Users/black_bulls/SecretFinder/SecretFinder.py"'
alias loxs='python3 "/Users/black_bulls/loxs/loxs.py"'
alias lostfuzzer='bash "/Users/black_bulls/lostfuzzer/lostfuzzer.sh"'
alias lazyegg='python3 "/Users/black_bulls/lazyegg/lazyegg.py"'
