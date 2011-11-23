#!/bin/sh

# Returns the scripts locations path
currentscriptpath()
{
  local fullpath=`echo "$(readlink -f $0)"`
  local fullpath_length=`echo ${#fullpath}`
  local scriptname="$(basename $0)"
  local scriptname_length=`echo ${#scriptname}`
  local result_length=`echo $fullpath_length - $scriptname_length - 1 | bc`
  local result=`echo $fullpath | head -c $result_length`
  echo $result
}

script_dir=`currentscriptpath`

echo "Saving the old .vim .vimrc .gvimrc with .old addition...Done"
for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done

echo "Create symbolic links to the Swvim - files for .vim and .vimrc...Done\n"
ln -s $script_dir/vim ~/.vim
ln -s $script_dir/swvimrc ~/.vimrc

echo "Now, you're almost finished. Just follow these following steps and you're ready to go:\n"
echo "\tgem install vim-update-bundles"
echo "\tvim-update-bundles"
