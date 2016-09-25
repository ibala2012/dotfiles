#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# setup spacemacs configuration directory for the dotfiles workspace
if [ "$(ls -A ${BASEDIR}/emacs.d/)" ]; then
    echo "${BASEDIR}/emacs.d/ is not Empty"
else
    echo "${BASEDIR}/emacs.d/ is Empty"
    rm -rf ${BASEDIR}/emacs.d/
    git clone https://github.com/syl20bnr/spacemacs ${BASEDIR}/emacs.d
fi

# cloning the neobundle to get bundle features for vim
if [ "$(ls -A ${BASEDIR}/vim/bundle/)" ]; then
    echo "${BASEDIR}/vim/bundle/ is not Empty"
else
    echo "${BASEDIR}/vim/bundle/ is Empty"
    rm -rf ${BASEDIR}/vim/bundle
    mkdir -p ${BASEDIR}vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ${BASEDIR}/vim/bundle/neobundle.vim
fi
