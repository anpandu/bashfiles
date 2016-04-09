sudo apt-get install ubuntu-restricted-extras -y

sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily -y
sudo apt-get update -y
sudo apt-get install elementary-tweaks -y

wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb games" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update -y

sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt-get update -y
sudo apt-get install tlp tlp-rdw -y
sudo tlp start

sudo apt-get install synaptic -y
