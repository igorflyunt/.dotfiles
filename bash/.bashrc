# If not running interactively, don't do anything
[[ $- != *i* ]] && return
force_color_prompt=yes
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$'

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_prompt_command
fi

#dir colors 
d=.dircolors
test -r $d && eval "$(dircolors $d)"
#
# Bash-it
export BASH_IT="/home/iflyunt/.bash_it"

export BASH_IT_THEME='bakke'

# export BASH_IT_REMOTE='bash-it'

export GIT_HOSTING='git@git.domain.com'

unset MAILCHECK

export IRC_CLIENT='irssi'

export TODO="t"

export SCM_CHECK=true

#export SHORT_HOSTNAME=$(hostname -s)

#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1


BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Load Bash It
source $BASH_IT/bash_it.sh

man() {
        LESS_TERMCAP_md=$'\e[01;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[01;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[01;32m' \
        command man "$@"
}

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR=nvim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# aliases
. ~/.bash_aliases
