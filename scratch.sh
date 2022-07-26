# terrad from source
git clone https://github.com/terra-money/classic-core.git
make install
sudo apt install golang
make install
~/go/bin/terrad version
sudo cp ~/go/bin/terrad /usr/local/bin/
which terrad

# terrad from release
wget https://github.com/terra-money/classic-core/releases/download/v0.5.20/terra_0.5.20_Linux_x86_64.tar.gz
tar zxvf terra_0.5.20_Linux_x86_64.tar.gz
sudo mv ./terrad /usr/local/bin
rm ./terra_0.5.20_Linux_x86_64.tar.gz

# init node
rm -rf ~/.terra/
terrad init private-node

wget -O ./temp/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
cp ./temp/genesis.json ~/.terra/config/genesis.json

wget -O ./temp/addrbook.json https://networks.mcontrol.ml/columbus/addrbook.json 
cp ./temp/addrbook.json ~/.terra/config/addrbook.json

# start node
terrad start --x-crisis-skip-assert-invariants
