export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"
plugins=(coffee common-aliases git history python sbt scala tmux z)
source $ZSH/oh-my-zsh.sh
setopt AUTO_CD
export PATH=/Applications/anaconda/bin:/usr/local/bin:/usr/local/sbin:$PATH
