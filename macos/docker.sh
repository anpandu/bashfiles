
echo "Installing Docker"
if docker --version 2> /dev/null
then
    echo "Docker already installed"
else
    echo "Docker is not installed, installing.."
    brew cask install docker
fi