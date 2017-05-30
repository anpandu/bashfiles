echo "=== Info"
free -h
df -h
echo ""

echo "=== Allocate swapfile"
sudo fallocate -l 4G /swapfile
ls -lh /swapfile
echo ""

echo "=== Set swapfile permission"
sudo chmod 600 /swapfile
ls -lh /swapfile
echo ""

echo "=== Create + turn on swapfile"
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
echo ""

echo "=== Edit fstab"
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
