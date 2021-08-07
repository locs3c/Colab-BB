#!/bin/bash

# Instalando GO Lang
echo "Installing Golang"
wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar -xvf go1.16.7.linux-amd64.tar.gz
sudo mv go /usr/local
rm -rf go1.16.7.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
cp /usr/local/go/bin/go /bin/
mkdir /root/loc-recon/
cd /root/loc-recon/
# Instalndo Subfinder
git clone https://github.com/projectdiscovery/subfinder.git
cd /root/loc-recon/subfinder/v2/cmd/subfinder
go build .
mv subfinder /bin/
cd /root/loc-recon/
#Instalando Chaos
git clone https://github.com/projectdiscovery/chaos-client.git
cd chaos-client/cmd/chaos/
go build
cp chaos /bin/
cd /root/loc-recon/
#Instalando AssetFinder
git clone https://github.com/tomnomnom/assetfinder.git
cd assetfinder
go build
cp assetfinder /bin/
cd /root/loc-recon/
#Instalando Github Subdomains
pip install colored
pip install tldextract
wget https://raw.githubusercontent.com/gwen001/github-search/master/github-subdomains.py --quiet
#Instalando Findomain
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux --quiet
chmod +x /root/loc-recon/findomain-linux
#Instalando MassScan
cd /root/loc-recon/
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make
cd bin/
cp masscan /bin/
cd /root/loc-recon/
