echo "sudo apt update"
sudo apt update

echo ""
echo "> INSTALLING GIT"
sudo apt install git -y
git --version

echo ""
echo "> INSTALLING cURL"
sudo apt install curl -y
curl --version

echo ""
echo "> INSTALLING ZSH"
sudo apt install zsh -y
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

