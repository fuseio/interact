#!/usr/bin/env bash


export TXHASH=0x83daef68855b01cc70af7976d83ceaa150336e215efa78e4ed0d2922a4817b5a
export ETH_RPC_URL=https://rpc.fuse.io

# remote_debug() {
# 	hevm symbolic --rpc $(ETH_GOER) \
# 		--address 0x5d9c15e68048e480e2d1396fba888cc050843376 \
# 		--solver cvc4 --debug --json-file ./out/dapp.sol.json
# }

run() {

  export CALLER=$(seth tx $TXHASH from)
  export ADDRESS=$(seth tx $TXHASH to)
  export CALLDATA=$(seth tx $TXHASH input)
  # returns block 16484639, and contract 0x349Bc296D9945b1D4004d6De029BeAB33A78DEdc
  # not found. So we manually found the contract on block 17,035,624
  # https://explorer.fuse.io/address/0x349Bc296D9945b1D4004d6De029BeAB33A78DEdc/transactions
  # export BLOCK=$(($(seth tx $TXHASH blockNumber)-1))
  export BLOCK=17035624
  export GAS=$(seth tx $TXHASH gas)

  echo "${CALLER} | ${ADDRESS} | ${CALLDATA} | ${BLOCK} | ${GAS}"
	hevm exec \
     --caller $CALLER \
     --address $ADDRESS \
     --calldata $CALLDATA \
     --rpc $ETH_RPC_URL \
     --block $BLOCK \
     --gas $GAS \
     --debug
}
