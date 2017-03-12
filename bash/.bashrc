# If not running interactively, don't do anything
[[ $- != *i* ]] && return
force_color_prompt=yes
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$'

#
# Bash-it
export BASH_IT="/home/iflyunt/.bash_it"

export BASH_IT_THEME='zork'

# export BASH_IT_REMOTE='bash-it'

export GIT_HOSTING='git@git.domain.com'

unset MAILCHECK

export IRC_CLIENT='irssi'

export TODO="t"

export SCM_CHECK=true

#export SHORT_HOSTNAME=$(hostname -s)

#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source $BASH_IT/bash_it.sh



BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

man() {
        LESS_TERMCAP_md=$'\e[01;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[01;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[01;32m' \
        command man "$@"
    }

#aliases
#
#pacman
alias p='sudo pacman -S'
alias pu='sudo pacman -Suy'
alias pro='sudo pacman -Rns $(sudo pacman -Qtdq)'  # remove orphans
alias pc='sudo pacman -Scc'                        # clean cache
alias pr='sudo pacman -Rns'                        # remove package
#
#pacaur
alias pau='pacaur -Suya'
alias pa='pacaur -S'
#
#rm
#
alias rd='rm -rfv' #remove folder
#
#miscellaneous
#
alias s='sudo'
alias h='history | less'
alias c='clear'
alias ll='ls -l'
alias l.='ls -dl .*'
alias ..='cd ..'
alias 2..='cd ../../'
alias 3..='cd ../../../'
alias dfree='df -h'
alias uum='udiskie-umount -f -d -e /dev/sdf1'
alias e='nvim'
alias se='sudo nvim'
#
#configs edit
#
alias i3conf='nvim ~/.config/i3/config'
alias barconf='nvim ~/.config/polybar/config'
alias rangerconf='nvim ~/.config/ranger/rc.conf ~/.config/ranger/rifle.conf'
alias .bashconf='nvim ~/.bashrc'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8


