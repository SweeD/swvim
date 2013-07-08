# Swvim

Swvim is a little vim package. It's lightweight and optimized for rails development in terminal vim.

## Requirements

```bash
ruby 1.8.7
```

You need a vim version with ruby interpreter enabled. (for Command-T)
Also be sure that you have 256 colors enabled in your terminal.

For example:

```bash
➜  ~  tput colors
256

➜  ~  echo $TERM
xterm-256color
```

## Setup

Be sure that you don't have any .vim.old .vimrc.old .gvimrc.old in your
home directory.

Then do

    git clone git@github.com:SweeD/swvim.git ~/.swvim
    cd ~/.swvim
    ./install.sh

Now you have to follow these steps to finish the installation:
    
    gem install rake
    gem install vim-update-bundles
    vim-update-bundles

And now you're ready to go!


## Customization

You can add your own configurations in ~/.vimrc.local to customize the config to your needs.

## Travis Build Status

[![Build
Status](https://secure.travis-ci.org/SweeD/swvim.png)](http://travis-ci.org/SweeD/swvim)
