
echo ""
echo "> yum -y install zsh"
yum -y install zsh
zsh --version
chsh -s $(which zsh)
echo $SHELL

echo "> install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

