# Path to your oh-my-zsh installation.
export ZSH=/home/jeffreywen/.oh-my-zsh

ZSH_THEME="ys"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

source $ZSH/oh-my-zsh.sh

#----- Aliases
alias ltr="ls -ltr"
alias cb="xclip -sel clip <"
alias printing="lpr -P jeffprinter"
alias hist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias ctp='pandoc --smart -V geometry:margin=1.5cm,left=.5cm,right=.5cm'
alias vp='zathura'
alias jump="ssh -A jump"
alias lg="ls -ltr | grep "
alias vbm="VBoxManage"

if [ -z "$SSH_AUTH_SOCK" ]; then
	eval `ssh-agent -s`
	ssh-add
fi
