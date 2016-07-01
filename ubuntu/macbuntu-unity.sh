sudo add-apt-repository ppa:noobslab/apps -y
sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:mutate/ppa -y
sudo apt-get update

sudo apt-get install macbuntu-bscreen-v6 -y
sudo apt-get install adwaita-os-x-gtk3 -y
sudo apt-get install macbuntu-icons-v6 -y
sudo apt-get install macbuntu-ithemes-v6 -y
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac-15.10/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/
sudo apt-get install mutate -y
sudo apt-get install indicator-synapse -y
