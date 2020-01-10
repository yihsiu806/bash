#PS1='[\u@\h:\W]\$ '
PS1='\[\e[1;36m\]\A \[\e[1;33m\]\u\[\e[1m\]@\h \[\e[1;32m\][\W]\[\e[0m\] > '
alias ls='ls -hG'
alias ll='ls -lA'
alias grep='grep --color'
alias cdd='cd ~/Desktop'
cdd
clear
 
# COLORFUL MAN PAGE (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
 
# CHANGE LS COLOR
export LSCOLORS=gxfxcxdxbxegedabagacad
