#!/bin/sh

# submodules

git submodule init
git submodule update

# make symbolic links

link_file() {
  source="${PWD}/$1"
  target="${HOME}/$1"

  if [ -e $target ] ; then
    if [ ! -d $target ] ; then
      echo "Update\t$target"
      mv $target $target.bak
      ln -sf ${source} ${target}
    fi
  else
    echo "Install\t$target"
    ln -sf ${source} ${target}
  fi
}

for i in .*
do
  if [ "${i}" != ".git" ] ; then
    link_file $i
  fi
done
link_file bin

# package install

if [ ! -d $HOME/.vim/bundle/neobundle.vim ]
then
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

git update-index --assume-unchanged modules/zsh-completions
