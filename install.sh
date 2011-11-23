#!/bin/sh
current_dir=$(pwd)
script_dir=$(dirname $0)

#for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done
ln -s $script_dir/vim ~/.vim
ln -s $script_dir/swvimrc ~/.vimrc

echo "Now, you're almost finished. Just follow these following steps and you're ready to go."
echo "gem install vim-update-bundles"
echo "vim-update-bundles"
