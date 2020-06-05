gitbranch() {
#    br=$(git br 2> /dev/null | grep '\*' | cut -d' ' -f2)
    br=$(git branch 2> /dev/null | grep '\*')
    [ -n "${br}" ] && echo " (${br#* })"
}

#PS1='\[\e[1;32m\][\w]\[\e[0m\] > '
#PS1='\e[0;32m\w\e[m $'
PS1='\[\e[1;32m\][\w]\[\e[0m\]\[\e[1;33m\]$(gitbranch)\[\e[0m\]$( [ -n "${VIMRUNTIME}" ] && echo "\[\e[1;31m\] (vim)\[\e[0m\]" ) > '
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

export PATH=$PATH:~/bin
cs() { cd "$@" && ls; }

source /usr/share/bash-completion/completions/git

alias cd='. $HOME/.cdecd'

agr() { ag -0 -l "$1" "$JSONDIR" | xargs -r0 sed -i "/$1/d"; ag "$1"; }
export JSONDIR="/home/jenny/supervyse/spv-core/web/webui/json"
export -f agr

chtn() { echo -ne "\033]0;$1\007"; }
export -f chtn 

alias spvbuild="time make BUILD_JOBS=-j$(nproc --all) 2>&1 | tee ../build.log"
alias make="make BUILD_JOBS=-j$(nproc --all)"

alias sep-restart='sudo systemctl restart symcfgd rtvscand smcd autoprotect'

# for superyse issue number
export ISSUE_NUMBER_LOCATION=~/.issue

alias makeevb='make TARGET_ID=ast2500evb BUILD_JOBS=-j4'
alias makewolfpass='make TARGET_ID=WolfPass BUILD_JOBS=-j4'
alias makeyubacity='make TARGET_ID=YubaCity BUILD_JOBS=-j4'
alias makespv='source envsetup.sh ast2500evb; make'

alias ipmitool='ipmitool -Ilanplus -H192.168.19.10 -Uroot -Proot'

