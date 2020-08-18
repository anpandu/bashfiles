
echo "Installing PIP"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm -rf get-pip.py
python3 -m pip --version
python3 -m pip install virtualenv
