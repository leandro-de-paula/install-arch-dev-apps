#!/bin/bash

echo "Archlinux Post Install Script"


echo "Installing FiraCode font"
paru -S ttf-fira-code


echo "Installing VSCode"
sudo pacman -S gnome-keyring
paru -S visual-studio-code-bin


echo "Installing PHP"
paru -S php php-xsl php-gd php-fpm php-igbinary php-imagick php-intl php-redis xdebug


echo "Installing Composer"
paru -S composer


echo "Require Laravel Valet"
sudo pacman -S jq xsel
composer global require cpriego/valet-linux -W

echo "Require composer packages"
composer global require laravel/installer
composer global require tightenco/takeout


echo "Install ZSH"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions history-substring-search colored-man-pages)/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

echo 'export PATH=$PATH:~/.yarn/bin' >> ~/.zshrc
echo 'export PATH=~/.config/composer/vendor/bin:$PATH' >> ~/.zshrc

source ~/.zshrc


echo "Install MySQL Client & DBeaver"
sudo pacman -S mysql-clients
sudo pacman -S dbeaver


echo "Install Docker"
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo docker info
sudo usermod -aG docker $USER


echo "Install Appimagelauncher"
sudo pacman -S appimagelauncher


echo "Install NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc
source ~/.zshrc
nvm install v20.18.0
corepack enable


echo "Install Laravel valet"
valet install
