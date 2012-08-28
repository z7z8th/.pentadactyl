#!/bin/sh

cd $HOME
GITHUB_URL=https://z7z8th@github.com/z7z8th/.pentadacyl.git
git clone $GITHUB_URL
ln -s .pentadacyl/rc $HOME/.pentadactylrc
git submodule init
git submodule update
