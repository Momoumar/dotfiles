#!/usr/bin/env bash
# originally from Ryusuke Kimura - https://github.com/ryurock/brewfile/blob/

set -e

if [ ! `uname` = "Darwin" ]; then
  echo "Sorry. falco is only available only OSX"
  exit
fi

# check Xcode
if ! which xcodebuild >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed XCode and XCode CommandLine Tools"
  exit
else
    echo "[Install] Already exists dependency XCode and XCode CommandLine Tools"
fi

# Homebrew installation
if ! which brew >/dev/null 2>&1; then
  echo "[Install] Dependency Homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  command_ver=$(brew --version)
  command=$(which brew)
  echo "[Install] installed Homebrew. path : ${comand} version : ${command_ver}"
else
    echo "[Install] Already exists dependency Homebrew"
fi

# check Ruby is installed
if ! which ruby >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed Ruby"
  exit
fi

# check Rubygems is installed
if ! which gem >/dev/null 2>&1; then
  echo "[Error] Dependency Error. not installed Ruby Gem"
  exit
fi

# Brewdler installation
if ! which brewdle >/dev/null 2>&1; then
  echo "[Install] Dependency Brewdle"
  sudo gem install brewdler --no-ri --no-rdoc
  command_ver=$(brewdle --version)
  command=$(which brewdle)
  echo "[Install] installed Brewdle. path : ${comand} version : ${command_ver}"
else
  echo "[Install] Already exists dependency Brewdle"
fi

echo "Dependency Syntax OK"