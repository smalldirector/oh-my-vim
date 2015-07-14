# OH-MY-VIM

## Screenshots
![OH-MY-VIM](http://7b1g7w.com1.z0.glb.clouddn.com/oh-my-vim-screenshot.png)

## Getting Started

### Prerequisites

#### Install Ctags
##### OS X

The default ``ctags`` executable in OSX does not support recursive directory
search (i.e. ``ctags -R``). To get a proper copy of ctags, use one of the
following options:

* Using `Homebrew`

    `brew install ctags`

* Using `MacPorts`

    `port install ctags`

##### Linux

To install ctags use your package manager. 

* For Debian-based systems (Ubuntu, Mint, etc.)::

    `sudo apt-get install exuberant-ctags`

* For Red Hat-based systems (Red Hat, Fedora, CentOS)::

    `sudo yum install ctags`

#### Install Gotags
[Gotags](https://github.com/jstemmer/gotags)

### Basic Installation

##### 1. Clone the repository:
`git clone git@github.com:smalldirector/oh-my-vim.git ~/.oh-my-vim`

##### 2. 2. *Optionally*, backup your existing @~/.vimrc@ file:
`cp ~/.vimrc ~/.vimrc.bak`

##### 3. Create a new vimrc configuration file
`ln -s ~/.oh-my-vim/vimrc ~/.vimrc`

##### 4. Create a new vimrc bundle configuration file
`ln -s ~/.oh-my-vim/vimrc.bundles ~/.vimrc.bundles`

##### 5. Set ctags in your vimrc file
`let g:tagbar_ctags_bin='CTAGS_PATH'`

If you use `Homebrew` to install `ctags` on OS X, this configuration shoule be

`let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'`

and this is the default configuration in the template vimrc file, please change it with your requirement.
##### 6. Install vim plugins
We use `Vundle` to manage our vim plugins, so run `:PluginInstall` command to install all essential plugins.

## LICENSE

Oh My Vim is released under the [MIT license](https://github.com/smalldirector/oh-my-vim/blob/master/LICENSE).
