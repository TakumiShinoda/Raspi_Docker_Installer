curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

echo "deb [arch=armhf] https://download.docker.com/linux/debian \
	$(lsb_release -cs) stable" | \
	sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo dpkg --configure -a
sudo apt-get install --yes docker-ce
