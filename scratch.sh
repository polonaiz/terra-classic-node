# sync from genesis block
mkdir /data/.terra
terrad init --home=/data/.terra classic-01
wget -O /data/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
# enable lcd api
# configure seeds
terrad start --home=/data/.terra --x-crisis-skip-assert-invariants

# sync from quicksync snapshot
mkdir /data/.terra
terrad init --home=/data/.terra classic-02
terrad init --home=/data/.terra classic-03
# gsutil cat is not stable for long file
gsutil cat gs://quicksync-archive/columbus-5-archive.20220830.1141.tar.lz4 | \
    lz4 -dc - | tar -xvf -C /data -
mv /data/.terra/data /data/.terra/data.init
mv /data/data /data/.terra/data
# enable lcd api
# configure seeds
e999fc20aa5b87c1acef8677cf495ad85061cfb9@seed.terra.delightlabs.io:26656,6d8e943c049a80c161a889cb5fcf3d184215023e@public-seed2.terra.dev:26656,87048bf71526fb92d73733ba3ddb79b7a83ca11e@public-seed.terra.dev:26656,3ddf51347ba7c2bc4a8e1e26ee9d1cbf81034516@162.55.244.250:27656,5618b310cfac1271a34f5c38576a5dceb1a641e6@162.55.132.48:15606,7cd549f6dab19000c260336c1a34479f8ff42964@54.154.91.139:26656,6ddd22cca53d2f0d03043614fc9f76acc72def8c@seed.terra-mainnet.everstake.one:26656,12e5d8f3602f63644cf548ffc83d886b5715a29f@kenaz.coinbevy.com:26656,ba5abb29421c44a8d5172d97206dd56342134a23@terra-mainnet-seed.larry.coffee:26656,65d86ab6024153286b823a3950e9055478effb04@terra.inotel.ro:26656,42928a07c8fe3313cfbfba78f296bf713e12a0a1@seed-columbus.terra.01node.com:26656,2b5ecb577e0fec2f15bc6c855dfe158f072a32a8@mnet-seed.terra.nitawa.systems:26656,235b5e97d7932e72fc846adcc712cd71e2a1b1be@seed.terra.lunarnode.org:26656,7575f4fdf92c4b63b2bf3e57ea0bced03b004792@3.35.101.38:26656,48fca58b12438e618a596e9aab634b4ef46ea67b@34.218.166.180:26656,1757b212d15840d9a8781bb4a8c201a9dd70d0fa@seed-mainnet.moonshot.army:26656,5e7cdd3f0684dbab8d7fa5d18de3e9194859be03@seed.terra.btcsecure.io:26656,b1bdf6249fb58b4c8284aff8a9c5b2804d822261@seed.terra.synergynodes.com:26656,92bcd725fb130530263704a4716da9c942becfa7@seed.mcontrol.ml:26656,cd0a58c2c9ee0613bf1988b3432fb2382f346a05@terra-mainnet-seed-1.stakin-nodes.com:26656,84a3a629a865245b94ac495f8c88e5717e4de9f1@terra-seed-server-01.stakely.io:26661,eb67380db62292506d41f28b1b77785a62a0f298@seed.terra.kkvalidator.com:26656,4f2d05162119a665b267599d3c86a936d65a9af0@seed.terra.rockx.com:26656,406bcf90a7b29df6ae475a1f94abe04ebde805af@mainnet.seed.terraindia.info:26656,1690a0c809314f2ff7f8e3ac559d5f30e7ba047b@65.108.9.149:26656,85963d3827ceab08be38285fbe354b90a2e45fef@seed-mainnet.terra.lunastations.online:36656,b977f4a6fe45b2621c2e009cdedc1d57c7f977ff@65.0.190.90:26656,ad2c60e2d9b5566385a192fac79ed540955266a4@194.163.167.27:26656,877c6b9f8fae610a4e886604399b33c0c7a985e2@terra.mainnet.seed.forbole.com:10056
terrad start --home=/data/.terra --x-crisis-skip-assert-invariants

#
terrad status | jq
curl http://localhost:1317/blocks/latest | jq .block.header  
