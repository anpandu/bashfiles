
echo ">>> add key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo ">>> add repo"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce

echo ">>>  install docker"
sudo apt-get install -y docker-ce

echo ">>>  view status"
sudo systemctl status docker
