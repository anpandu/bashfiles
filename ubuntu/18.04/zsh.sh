
sudo apt-get install zsh -y
zsh --version

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cat .bashrc >> ~/.bashrc
cat .profile >> ~/.profile
cat .zshrc >> ~/.zshrc
cat ~/.zshrc

