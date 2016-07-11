#!/bin/sh
script_dir="$( cd "$( dirname "$0" )" && pwd )"

echo "Saving the old .vim .vimrc .gvimrc with .old addition...Done"
for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done

echo "Create symbolic links to the Swvim - files for .vim and .vimrc...Done\n"
ln -s $script_dir/vim ~/.vim
ln -s $script_dir/swvimrc ~/.vimrc

echo "To install the plugins go open vim and enter following:"
echo ":PlugInstall"
echo "and hit enter"
