#!/usr/bin/env bash
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
#brew install coreutils
#echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to  \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
#brew install findutils
# Install Bash 4
brew install \
 bash \
 bash-completion

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew tap \
  homebrew/dupes \
  alehouse/homebrew-unofficial \
  homebrew/versions \
  caskroom/fonts \
  caskroom/cask \
  homebrew/homebrew-php \
  josegonzalez/homebrew-php
#brew install homebrew/dupes/grep

# Install everything else
brew install \
  ssh-copy-id \
  git --with-brewed-openssl \
  tree \
#  ack \
#  rename \
 python --with-{berkely-db4,poll,tcl-tk,sphinx-doc} \
 python3 --with-{tcl-tk,sphinx-doc} \
 ruby --with-{doc,gdbm,libffi,tcltk} \
 node --with-{debug,full-icu,openssl} \
 vim \
#  swift \

# Cask
brew cask install \
  flash \
  java \
  silverlight \
  xquartz

# update setuptools, pip and pip3
pip3 install --upgrade setuptools pip wheel
pip install --upgrade setuptools pip

# Remove outdated versions from the cellar
brew cleanup

# link apps
brew linkapps

# Brew Cask
brew cask update
brew cask cleanup
