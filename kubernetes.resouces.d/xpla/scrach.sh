
mkdir /data/.xpla
xplad_v1.0.0 init xf-xpla-01 --home=/data/.xpla --chain-id dimension_37-1
curl https://raw.githubusercontent.com/xpladev/mainnet/main/dimension_37-1/genesis.json -o /data/.xpla/config/genesis.json

vim /data/.xpla/config/config.toml
    #seeds=""
    seeds="e7b6016ce5663a69ba71a982072315545eb0d5f6@seed.xpla.delightlabs.io:26656"
    # Maximum size of a message packet payload, in bytes
    #max_packet_msg_payload_size = 1024
    max_packet_msg_payload_size = 4096

# tmux
xplad_v1.0.0 start --home=/data/.xpla

# monitor
xplad_v1.0.0 status 2>&1 | jq
watch -d 'xplad_v1.0.0 status 2>&1 | jq'

# lcd check
curl http://localhost:1317