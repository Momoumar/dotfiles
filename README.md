# Overview
My personal dotfiles for Mac OS X (Mavericks).

## Repository Files
* gitignore - rules for git when I commit
* tmux.conf - configuration file for tmux
* vimrc.after - config file for Janus in combination with vim
* vimrc.before - config file for Janus in combination with vim
* zshrc - configuration file (I used ohmyzsh in combination)

# Configuration
## Prerequisites

* install [Homebrew](http://mxcl.github.com/homebrew/) `ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`
	* check if everything is okay before installing further brews `brew doctor`
* install [git](http://git-scm.com): `brew install git` (Mavericks delivers a further old git version, compare `brew info git` with `git --version`)
	* to load the newer (homebrew) version of git make sure to edit .zshrc: `echo 'export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"' >> ~/.zshrc`
* to install vim you **first have to** install [mercurial](http://mercurial.selenic.com): `brew install mercurial`
* install [vim](http://www.vim.org): `brew install vim`

**Clone the repository and place your .dotfiles in your home directory.**

### Vim
* install [Janus](https://github.com/carlhuda/janus/): `curl -Lo- https://bit.ly/janus-bootstrap | bash`
	* extend [Janus](https://github.com/carlhuda/janus) with addional plugins `mkdir ~/.janus && cd ~/.janus`
	* install [tComment](http://www.vim.org/scripts/script.php?script_id=1173) (nice shortcut for commenting things) for Janus: `git clone https://github.com/tomtom/tcomment_vim`
	* install [Powerline](https://github.com/Lokaltog/vim-powerline) (looks pretty) for Janus: `git clone https://github.com/Lokaltog/vim-powerline`
	* install [Solarized](http://ethanschoonover.com/solarized) (looks pretty) for Janus: `git clone https://github.com/altercation/vim-colors-solarized`
	* install [Eunuch](https://github.com/tpope/vim-eunuch) (use things like “:SudoWrite”) for Janus: `git clone https://github.com/tpope/vim-eunuch`
	* configure [Janus](https://github.com/carlhuda/janus)

* install a patched font so that Powerline will function properly: [Patched Menlo for Powerline](https://gist.github.com/1627888)

### iTerm 2
* download iTerm 2 for [Mac OS X](http://code.google.com/p/iterm2/downloads/list)
* create a new profile: `Preferences > profiles`
* download the [Solarized theme](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)
* load a theme into iTerm 2´s color presets: `Colors tab > load a preset`
* change font: `Preferences > Text` to Powerline 
* uncheck `Preferences > Text` "Draw bold text in bold font"
* terminal type should be "xterm-256color"

### zsh/oh-my-zsh
* install oh-my-zsh: `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`

### tmux
* install tmux: `brew install tmux`
* fix copy/paste issues: `brew install reattach-to-user-namespace`
* make assure that you placed **tmux.conf** in your home directory
