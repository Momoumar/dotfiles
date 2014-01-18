#!/usr/bin/env bash




# execute straight from Github (though the brewfile will not be found) 'curl https://raw.github.com/guttertec/dotfiles/master/bootstraph.sh | sh -'
# inspired by Ryusuke Kimura - https://github.com/ryurock/brewfile/blob/

# TO DO
## TERMINAL/COMMAND LINE INSTALL
### run command 'xcode-select --install'
## JAVA INSTALL
### run command 'java --version'

set -e

if [ ! `uname` = "Darwin" ]; then
  echo "Sorry. falco is only available only OSX"
  exit
fi

# check if XCode is installed
if ! which xcodebuild >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed XCode and XCode CommandLine Tools"
  exit
else
    echo "[Install] Already exists dependency XCode and XCode CommandLine Tools"
fi

# Install Homebrew
if ! which brew >/dev/null 2>&1; then
  echo "[Install] Dependency Homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  command_ver=$(brew --version)
  command=$(which brew)
  echo "[Install] installed Homebrew. path : ${comand} version : ${command_ver}"
else
    echo "[Error] Homebrew is already installed."
fi

# check if Ruby is installed
if ! which ruby >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed Ruby"
  exit
fi

# check if Rubygems is installed
if ! which gem >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed Ruby Gem"
  exit
fi

# Use brew and brew-cask to install everything by using a Brewfile
echo "[Install] Brewfile"
brew bundle brewfile

echo "Everything is installed. Have a nice day."