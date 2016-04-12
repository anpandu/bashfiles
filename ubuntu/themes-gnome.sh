sudo apt-get install autoconf -y
sudo apt-get install automake -y
sudo apt-get install pkg-config -y
sudo apt-get install libgtk-3-dev -y

sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
cd ..
rm -rf arc-theme

