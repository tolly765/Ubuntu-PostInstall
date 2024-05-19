#!/bin/bash

# Download common dependencies
sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip -y
sudo apt install curl -y

# Install ZSH and OMZ
sudo apt install zsh -y
sudo chsh -s "$(which zsh)" "$USER" # Change shell for current user
sudo chsh -s "$(which zsh)" root    # Change shell for root
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Download theme
curl https://raw.githubusercontent.com/tolly765/Ubuntu-PostInstall/main/.oh-my-zsh/themes/kali-like.zsh-theme -o ~/.oh-my-zsh/themes/kali-like.zsh-theme

# Download zshrc
curl https://raw.githubusercontent.com/tolly765/Ubuntu-PostInstall/main/.zshrc -o ~/.zshrc

#? ROOT SECTION
sudo /usr/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo /bin/sh -c "curl https://raw.githubusercontent.com/tolly765/Ubuntu-PostInstall/main/.oh-my-zsh/themes/kali-like.zsh-theme -o ~/.oh-my-zsh/themes/kali-like.zsh-theme"
sudo /bin/sh -c "curl https://raw.githubusercontent.com/tolly765/Ubuntu-PostInstall/main/.zshrc -o ~/.zshrc"

# Install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip >/dev/null
sudo ./aws/install

sudo reboot now
