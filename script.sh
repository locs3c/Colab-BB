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
