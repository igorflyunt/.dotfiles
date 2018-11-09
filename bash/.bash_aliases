alias i3conf='nvim ~/.config/i3/config'
alias barconf='nvim ~/.config/polybar/'
alias rangerconf='nvim ~/.config/ranger/rc.conf ~/.config/ranger/rifle.conf'
alias .bashconf='nvim ~/.bashrc'

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
alias pcaur='rd ~/.cache/pacaur/*'
#
#rm
#
alias rd='rm -rfv' #remove folder
alias srd='sudo rm -rfv' #remove folder
#
#miscellaneous
#
alias s='sudo'
alias h='history | less'
alias c='clear'
alias ll='ls -l --group-directories-first'
alias l.='ls -dl .*'
alias ..='cd ..'
alias 2..='cd ../../'
alias 3..='cd ../../../'
alias dfree='df -h'
alias e='nvim'
alias se='sudo nvim'
alias sysinfo='inxi -F && dfc'
alias backup='rsync -av --copy-links --delete ~/Documents ~/Music /media/External_HD/backup/'
alias amount='jmtpfs /media/adev'
alias aumount='s umount -v /media/adev'
