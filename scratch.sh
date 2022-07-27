# terrad from source
cd ~
sudo apt update 
sudo apt install -y golang
git clone https://github.com/terra-money/classic-core.git
cd classic-core
make install
~/go/bin/terrad version
sudo cp ~/go/bin/terrad /usr/local/bin/
which terrad
rm -rf ~/classic-core

# # terrad from release
# wget https://github.com/terra-money/classic-core/releases/download/v0.5.20/terra_0.5.20_Linux_x86_64.tar.gz
# tar zxvf terra_0.5.20_Linux_x86_64.tar.gz
# sudo mv ./terrad /usr/local/bin
# rm ./terra_0.5.20_Linux_x86_64.tar.gz

# init node
rm -rf ~/.terra/
terrad init private-node

wget -O ~/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
# wget -O ~/.terra/config/addrbook.json https://dl2.quicksync.io/json/addrbook.terra.json # fail
cp /workspaces/terra-classic-full-node/addrbook.json ~/.terra/config/addrbook.json

# start node
terrad start --x-crisis-skip-assert-invariants
