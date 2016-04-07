export ZSH=$HOME/.oh-my-zsh
## ZSH_THEME="pygmalion"
ZSH_THEME="juanghurtado"
plugins=(coffee common-aliases git history python sbt scala tmux z)
source $ZSH/oh-my-zsh.sh
for sf in $(ls ~/*.source); 
do 
    source $sf; 
done
setopt AUTO_CD
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/ss-bash
