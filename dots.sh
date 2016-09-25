#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bashrc
ln -sfn ${BASEDIR}/bashrc $HOME/.bashrc
ln -sfn ${BASEDIR}/bash_utils $HOME/.bash_utils
ln -sfn ${BASEDIR}/dircolors.256dark $HOME/.dir_colors
# bash_profile
ln -sfn ${BASEDIR}/bash_profile $HOME/.bash_profile

# compton
ln -sfn ${BASEDIR}/compton.conf $HOME/.config/compton.conf

# dunst
ln -sfn ${BASEDIR}/dunstrc $HOME/.config/dunstrc

# feh
ln -sfn ${BASEDIR}/fehbg $HOME/.fehbg

# goobook
ln -sfn ${BASEDIR}/goobookrc $HOME/.goobookrc

# nano
ln -sfn ${BASEDIR}/nanorc $HOME/.nanorc

# urlview
ln -sfn ${BASEDIR}/urlview $HOME/.urlview

# xinitrc
ln -sfn ${BASEDIR}/xinitrc $HOME/.xinitrc

# Xresources
ln -sfn ${BASEDIR}/Xresources $HOME/.Xresources

# bin
ln -sfn ${BASEDIR}/bin $HOME/bin

# colors
ln -sfn ${BASEDIR}/colors $HOME/.colors

# dropbox-cli
ln -sfn ${BASEDIR}/dropbox-cli $HOME/.dropbox-cli

# fontconfig
ln -sfn ${BASEDIR}/fontconfig $HOME/.config/fontconfig

# fonts
ln -sfn ${BASEDIR}/fonts $HOME/.fonts

# i3
ln -sfn ${BASEDIR}/i3 $HOME/.i3

# irssi
ln -sfn ${BASEDIR}/irssi $HOME/.irssi

# mpd
ln -sfn ${BASEDIR}/mpd $HOME/.mpd

# mpdscribble
ln -sfn ${BASEDIR}/mpdscribble $HOME/.mpdscribble

# mplayer
ln -sfn ${BASEDIR}/mplayer $HOME/.mplayer

# msmtp
ln -sfn ${BASEDIR}/msmtprc $HOME/.msmtprc

# mutt
ln -sfn ${BASEDIR}/mutt $HOME/.mutt

# ncmpcpp
ln -sfn ${BASEDIR}/ncmpcpp $HOME/.ncmpcpp

# currently not in use
# offlineimap
#ln -sfn ${BASEDIR}/offlineimap.py $HOME/.offlineimap.py
#ln -sfn ${BASEDIR}/offlineimaprc $HOME/.offlineimaprc

# pass
# ln -sfn ${BASEDIR}/pass $HOME/.password-sfntore

# ranger
ln -sfn ${BASEDIR}/ranger $HOME/.config/ranger

# todo
ln -sfn ${BASEDIR}/todo $HOME/.todo

# vim
ln -sfn ${BASEDIR}/vimrc $HOME/.vimrc
ln -sfn ${BASEDIR}/vim/ $HOME/.vim

# emacs (specifically spacemacs)
ln -sfn ${BASEDIR}/emacs.d ${HOME}/.emacs.d
ln -sfn ${BASEDIR}/spacemacs ${HOME}/.spacemacs

# weechat
ln -sfn ${BASEDIR}/weechat $HOME/.weechat

# wl
ln -sfn ${BASEDIR}/wl $HOME/.wl

# ascii art folder
ln -sfn ${BASEDIR}/ascii_art ${HOME}/.ascii_art
