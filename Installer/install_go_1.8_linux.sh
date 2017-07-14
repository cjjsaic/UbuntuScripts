wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
# extract to /usr/local
sudo tar -C /usr/local -xvzf go1.8.3.linux-amd64.tar.gz
rm go1.8.3.linux-amd64.tar.gz
echo Adding go path to global enviroment...
echo export PATH=$PATH:/usr/local/go/bin >> ~/.profile
source ~/.profile
echo `go version`
echo Try installing my personal favorite go library.
echo === install colorgo
go get gitlab.com/jinfagang/colorgo.git

echo Succed installed golang 1.8.3.
