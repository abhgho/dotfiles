export ZSH="/home/abhik/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    web-search
    common-aliases
    zsh-autosuggestions
    last-working-dir
)

source $ZSH/oh-my-zsh.sh
source /home/abhik/app/download/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias app="cd ~/app";
alias project="cd ~/projects";
alias mnt="cd /mnt/c/Users/abhik/"



# NVM and SDKMAN Imports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

