wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz | tar -C /usr/local -xzf go1.8.3.linux-amd64.tar.gz
rm go1.8.3.linux-amd64.tar.gz
echo Adding go path to global enviroment...
echo export PATH=$PATH:/usr/local/go/bin >> ~/.profile
echo Succed installed golang 1.8.3.
