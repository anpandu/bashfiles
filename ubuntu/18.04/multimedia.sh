echo ''
echo '=== spotify'
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
#sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
#sudo apt install spotify-client -y

echo ''
echo '=== vlc'
sudo add-apt-repository -y ppa:videolan/master-daily
sudo apt update
apt show vlc
sudo apt install -y vlc qtwayland5
sudo apt install -y libavcodec-extra
