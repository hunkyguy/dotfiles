export ZSH=$HOME/.oh-my-zsh
## ZSH_THEME="pygmalion"
ZSH_THEME="juanghurtado"
plugins=(coffee common-aliases git history python sbt scala tmux z)
source $ZSH/oh-my-zsh.sh
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
if [ -f ~/.exports ]; then
    source ~/.exports
fi
setopt AUTO_CD
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/ss-bash
