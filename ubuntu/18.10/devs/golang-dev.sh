
echo "Downloading tar.gz"
curl -O https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz
sha256sum go1.12.1.linux-amd64.tar.gz

echo "Extracting tar.gz"
sudo tar -xvf go1.12.1.linux-amd64.tar.gz -C /usr/local
sudo chown -R root:root /usr/local/go
rm -rf go1.12.1.linux-amd64.tar.gz