#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h \w \$ '

# Vim
#alias vim=nvim

# Confirm before overwriting
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

### COLORS IN LESS 
### (31 - red; 32 - green; 33 - yellow; 0 - reset/normal; 1 - bold; 4 - underlined) ### 

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# Change some key's function
setxkbmap -model abnt2 -layout br -variant abnt2
setxkbmap -option ctrl:nocaps
#setxkbmap -option caps:swapescape setxkbmap -option kpdl:comma

# Map WACOM to motitor 2
#xsetwacom --set "21" MapToOutput eDP-1
#xsetwacom --set "22" MapToOutput eDP-1

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Auto completar
complete -cf sudo
complete -cf man

# Histórico Infinito
HISTSIZE=-1
HISTFILESIZE=-1

# Alias
alias ..='cd ..' 
alias ...='cd ../..'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias pacman='sudo pacman'
alias espelhar='sudo scrcpy -b4M -m1200 --window-title "TABLET"'
alias tree='tree -C'
alias grep='grep --color'
alias nb='nohup jupyter-notebook > /tmp/jnb.out &'
