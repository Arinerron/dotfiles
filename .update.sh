#!/bin/sh
# update the package listing for github.com/Arinerron/dotfiles

echo "Updating package listing..."
pacman -Q > .pacman-packages.txt

mv .git.dotfiles .git || true

git add -u
git commit
git push

mv .git .git.dotfiles || true
