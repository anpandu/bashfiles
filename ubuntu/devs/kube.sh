echo "#=== virtualbox"
curl -O https://download.virtualbox.org/virtualbox/5.2.14/virtualbox-5.2_5.2.14-123301~Ubuntu~xenial_amd64.deb
sudo apt install -y ./virtualbox-5.2_5.2.14-123301~Ubuntu~xenial_amd64.deb
rm ./virtualbox-5.2_5.2.14-123301~Ubuntu~xenial_amd64.deb

echo "#=== kubectl"
sudo snap install kubectl --classic

echo "#=== minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/