git clone https://github.com/JoseExposito/touchegg.git
cd touchegg
sudo apt-get build-dep touchegg -y
sudo apt-get install build-essential libqt4-dev utouch libgeis-dev libx11-6 libxtst-dev -y
qmake
make
sudo make install
cd ..
rm -rf touchegg

