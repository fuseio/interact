


export TXHASH=0x83daef68855b01cc70af7976d83ceaa150336e215efa78e4ed0d2922a4817b5a
export ETH_RPC_URL=https://rpc.fuse.io

remote_debug() {
	hevm symbolic --rpc $(ETH_GOER) \
		--address 0x5d9c15e68048e480e2d1396fba888cc050843376 \
		--solver cvc4 --debug --json-file ./out/dapp.sol.json
}

run() {
	hevm exec \
     --caller $(seth tx $TXHASH from) \
     --address $(seth tx $TXHASH to) \
     --calldata $(seth tx $TXHASH input) \
     --rpc $ETH_RPC_URL \
     --block $(($(seth tx $TXHASH blockNumber)-1)) \
     --gas $(seth tx $TXHASH gas) \
     --debug
}
