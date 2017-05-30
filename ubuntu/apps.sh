

echo ''
echo ''
echo '=== add repo'

sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
sudo add-apt-repository ppa:mc3man/gstffmpeg-keep -y
sudo add-apt-repository ppa:videolan/stable-daily -y
sudo apt-get update

echo ''
echo ''
echo '=== ssh server'
sudo apt-get install openssh-server -y
sudo ufw allow 22



echo ''
echo ''
echo '=== apps'
sudo apt-get install gstreamer0.10-ffmpeg -y
sudo apt-get install acpi -y
sudo apt-get install sublime-text-installer -y
sudo apt-get install unity-tweak-tool -y
sudo apt-get install compiz compizconfig-settings-manager compiz-plugins -y
sudo apt-get install vlc -y
sudo apt-get install filezilla -y
sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller -y
sudo apt-get install qbittorrent -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install y-ppa-manager -y
sudo apt-get install notepadqq notepadqq-gtk -y

sudo apt-get install git -y
sudo apt-get install git-flow -y
sudo apt-get install gitg -y
