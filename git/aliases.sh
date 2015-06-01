#!/bin/bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.rb rebase
git config --global alias.pi cherry-pick

git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

git config --global alias.assume 'update-index --assume-unchanged'
git config --global alias.unassume 'update-index --no-assume-unchanged'
git config --global alias.assumed '"!git ls-files -v | grep ^h | cut -c 3-"'
