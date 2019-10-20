#!/bin/bash

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

brew tap homebrew/cask-versions

sudo easy_install pip

sudo pip install ansible 

read -p "Press enter to continue"

ansible-galaxy install -r requirements.yml
ansible-playbook -i inventory --ask-become-pass main.yml