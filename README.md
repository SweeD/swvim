# Swvim [![Build Status](https://secure.travis-ci.org/SweeD/swvim.png)](http://travis-ci.org/SweeD/swvim)

Swvim is a little vim package. It's lightweight and optimized for rails development in terminal vim.

## Requirements

To use airline with the current theme and powerline fonts, please
install [powerline-fonts](https://github.com/powerline/fonts).

Just be sure that you have 256 colors enabled in your terminal.

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

    bundle
    RUBYOPT='-E utf-8' vim-update-bundles

And now you're ready to go!


## Customization

You can add your own configurations in `~/.vimrc.local` to customize the config to your needs.
