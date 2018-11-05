

echo ">>> install other deps"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

echo ">>> add key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo ">>> add repo"
sudo apt-key fingerprint 0EBFCD88
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce

echo ">>>  install docker"
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

echo ">>>  view status"
sudo systemctl status docker

echo ">>> apply ownership"
sudo usermod -aG docker ${USER}

echo ">>> install docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
