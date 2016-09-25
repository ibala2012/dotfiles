#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1="\[\e[1;34m\]\u\[\e[0m\] » [\[\e[1;32m\]\W\[\e[0m\]]\[\e[1;37m\]:\[\e[0m\] "
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[0;32m\]\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[0;37m\]'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;34m\][\[\033[1;33m\]\A\[\033[1;34m\]]\]-[\e[0;32m\]\u\[\e[m\]@\033[1;34m\]\h]-[\[\033[1;34m\]\w\[\033[1;34m\]]\n\[\033[1;34m\](\[\033[1;31m\]\$\[\033[1;34m\]> \[\033[00m\]'


#export commands
export PATH=~/bin:${PATH}
export PATH=${PATH}:~/.local/bin/
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export EDITOR="vim"
export BROWSER="chromium"
export TODO_DIR="/home/biyer/Documents/todo/"
export ALTERNATE_EDITOR=""
export DOT_DIR="$(dirname $(readlink -f ~/bin))"
#source bash aliases if the file is there
if [ -f ~/.bash_utils/bash_aliases ]; then
    source ~/.bash_utils/bash_aliases
fi
#source bash functions if the file is there
if [ -f ~/.bash_utils/bash_functions ]; then
    source ~/.bash_utils/bash_functions
fi

# starting ssh-agent if not started already
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
fi

eval `dircolors ~/.dir_colors`

neofetch
