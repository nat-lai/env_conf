#!/bin/sh

leafdir=$PWD
leafdir=${leafdir#${HOME}/}
basedir="\$HOME/${leafdir}"

gen_symlink()
{
    src=$1
    dest=$2
    if [ -e $2 ]; then
        if [ -h $2 ]; then
            link=$(readlink $2)
            if [ "x$link" = "x$1" ]; then
                return
            fi
        fi
        echo "$2 already exists."
        exit 1
    fi
    ln -s $src $dest
}

script=$(cat <<EOF
# N:ENV_CONF:BASH
if [ -e "$basedir/bashrc" ]; then
    . $basedir/bashrc
fi
EOF
)
if [ ! -e "$HOME/.bashrc" ]; then
    touch $HOME/.bashrc
fi
sig=$(grep N:ENV_CONF:BASH $HOME/.bashrc)
if [ "x$sig" = "x" ]; then
    echo "$script" >> $HOME/.bashrc
fi

script=$(cat <<EOF
# N:ENV_CONF:ZSH
if [ -e "$basedir/zshrc" ]; then
    . $basedir/zshrc
fi
EOF
)
if [ ! -e "$HOME/.zshrc" ]; then
    touch $HOME/.zshrc
fi
sig=$(grep N:ENV_CONF:ZSH $HOME/.zshrc)
if [ "x$sig" = "x" ]; then
    echo "$script" >> $HOME/.zshrc
fi

gen_symlink $leafdir/inputrc $HOME/.inputrc
gen_symlink $leafdir/screenrc $HOME/.screenrc
gen_symlink $leafdir/tmux.conf $HOME/.tmux.conf
gen_symlink $leafdir/vim $HOME/.vim
gen_symlink $leafdir/vim/vimrc $HOME/.vimrc

git submodule update --init
