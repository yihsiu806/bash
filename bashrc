# Alias
alias ls='ls --color=auto'
alias ll='ls -lA'
alias lh='ls -lh'
alias grep='grep --color'
alias ip='ip -c'
alias vi='vim'

# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PAGER="less"

# PS1
# gitbranch() {
#     br=$(git branch 2> /dev/null | grep '\*')
#     [ -n "${br}" ] && echo " (${br#* })"
# }
# PS1='\[\e[1;32m\][\w]\[\e[0m\] > '
# PS1='\e[0;32m\w\e[m $'
# PS1='\[\e[1;32m\][\w]\[\e[0m\]\[\e[1;33m\]$(gitbranch)\[\e[0m\]$( [ -n "${VIMRUNTIME}" ] && echo "\[\e[1;31m\] (vim)\[\e[0m\]" ) > '

# powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

# utility
cs() { cd "$@" && ls; }
chtn() { echo -ne "\033]0;$1\007"; } # change terminal title

# cdecd
if [ -f "$HOME/.cdecd" ]; then
    alias cd='. $HOME/.cdecd'
fi

# PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# enable git auto completion
source /usr/share/bash-completion/completions/git

# alias ipmitool='ipmitool -Ilanplus -H192.168.19.10 -Uroot -Proot'