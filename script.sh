#!/bin/bash
echo "Installing Golang"
wget https://golang.org/dl/go1.15.linux-amd64.tar.gz
sudo tar -xvf go1.15.linux-amd64.tar.gz
sudo mv go /usr/local
rm -rf go1.15.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
cp /usr/local/go/bin/go /bin/
mkdir /root/loc-recon/
cd /root/loc-recon/
git clone https://github.com/projectdiscovery/subfinder.git
cd /root/loc-recon/subfinder/v2/cmd/subfinder
go build .
mv subfinder /bin/
