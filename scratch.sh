

#
gcloud auth list
gcloud config set project
gcloud container clusters list 
gcloud container clusters get-credentials
kubectl get storageclasses

time tar --zstd -cf /tmp/.terra.config.tar.zst .terra/config

time tar --zstd -cf /arch/.terra.tar.zst /root/.terra
time tar --zstd -xf .terra.config.tar.zst

curl http://localhost:1317/blocks/latest | jq .block.header  


#
mkdir /data/.terra
terrad init --home=/data/.terra classic-01
wget -O /data/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
cp /addrbook.json /data/.terra/config/addrbook.json
terrad start --home=/data/.terra --x-crisis-skip-assert-invariants
