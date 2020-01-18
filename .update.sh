#!/bin/sh
# update the package listing for github.com/Arinerron/dotfiles

echo "Updating package listing..."
pacman -Q > .pacman-packages.txt
