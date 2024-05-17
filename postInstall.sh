#!/bin/bash

# Install ZSH and OMZ
sudo apt update
sudo apt install zsh -y
chsh -s "$(which zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Download theme
curl https://raw.githubusercontent.com/tolly765/Custom-ZSH/main/.oh-my-zsh/themes/kali-like.zsh-theme --create-dirs -o ~/.oh-my-zsh/themes/kali-like.zsh-theme

# Download zshrc
curl https://raw.githubusercontent.com/tolly765/Custom-ZSH/main/.zshrc -o ~/.zshrc

# Download common dependencies
sudo apt install python3-pip

# Install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
