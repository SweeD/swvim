#!/bin/sh
current_dir=$(pwd)
script_dir=$(dirname $0)

echo "Saving the old .vim .vimrc .gvimrc with .old addition...Done"
for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done

echo "Create symbolic links to the Swvim - files for .vim and .vimrc...Done\n"
ln -s $script_dir/vim ~/.vim
ln -s $script_dir/swvimrc ~/.vimrc

echo "Now, you're almost finished. Just follow these following steps and you're ready to go:\n"
echo "\tgem install vim-update-bundles"
echo "\tvim-update-bundles"
