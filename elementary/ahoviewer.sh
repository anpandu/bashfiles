sudo apt-get install dh-autoreconf -y
git clone https://github.com/ahodesuka/ahoviewer
cd ahoviewer
./bootstrap
make
sudo make install
cd ..
rm -rf ahoviewer
