SOLC_VERSION=0.8.12

all    :; dapp --use solc:$(SOLC_VERSION) build
clean  :; dapp clean && rm -rf ./tmp/*
test   :; dapp --use solc:$(SOLC_VERSION) test -v
fuzz   :; dapp --use solc:$(SOLC_VERSION) test --fuzz-runs 100
deploy :; dapp --use solc:$(SOLC_VERSION) create Mutual
debug  :; dapp --use solc:$(SOLC_VERSION) debug 


GAS=10000000

# USAGE: make sym ADD=0xAA55E0ca7115e068954526ddE18D929F2A2e572e
sym:
	hevm symbolic --rpc $(ETH_GOER) --address $(ADD) --solver cvc4 --debug

# CREATE TRANSACTION
create-tx:
	seth mktx --rpc-url $(ARB_RINKEBY) \
		--keystore $(KEYSTORE) \
		--from $(WALLET_DISK) --gas $(GAS) \
		0xC0aE9A2c75c79Dd4cAc0a9708154FB4033219014 \
		'adopt(uint)' '5'


# auto-recompile [install inotify-tools before]
wcompile:
	fswatch -m poll_monitor -or ./src | xargs -I{} sh -c "clear && dapp --use solc:$(SOLC_VERSION) build"

wtest:
	fswatch -m poll_monitor -or ./src | xargs -I{} sh -c "clear && dapp --use solc:$(SOLC_VERSION) test -v"

optimze:
	DAPP_STANDARD_JSON="config.json" \
	DAPP_SOLC_OPTIMIZE=true \
	DAPP_SOLC_OPTIMIZE_RUNS=1 \
	SOLC_FLAGS="--optimize --optimize-runs=1" \
	dapp --use solc:$(SOLC_VERSION) build


# update nix
update-nix:
	nix-channel --update && nix-env --upgrade

# download list of layer2 networks
get-chains:
	wget -O doc/chains.json https://chainid.network/chains.json

# start node poanetwork.dev chain:99
# https://github.com/dapphub/dapptools/blob/master/src/dapp/docs/testnet.rst
testnet:
	dapp testnet --rpc-port=8545 --chain-id=42

decimals:
	seth call $(BAT-ERC20) 'decimals()' | seth --to-dec

faucet:
	seth send $(FAUCET) 'gulp(address)' $(FROM)

send-spark:
	seth send --value 1000 --gas-price=1000000000 --gas=14000000 0x0cde80AD77Ab131510036A72b012a4A0F26C2ACC


# collect address and names from hardhat deployments
collect-addresses:
	for f in *.json; do echo \"$f\": && cat $f | jq '.address' && echo ","; done

# KEYSTORE MANIPULATION
inspect:
	ethkey inspect --private keys/keystore-55a9

# private key -> UTC keystore
import:
	ethsign import

# BALANCES
balance:
	seth balance $(ETH_FROM) | seth --from-wei

remote-debug:
	hevm symbolic --rpc $(ETH_GOER) \
		--address 0x5d9c15e68048e480e2d1396fba888cc050843376 \
		--solver cvc4 --debug --json-file ./out/dapp.sol.json

check-trace:
	curl --location --request POST 'https://explorer-node.fuse.io/' \
		--header 'Content-Type: application/json' \
		--data-raw '{ "jsonrpc":"2.0", "method":"trace_replayTransaction", "params":["0x9787a81511bc6477235a1a94a27097316a290bb22dbd19d437c08a47f2c223f9", ["trace"]], "id":1}'

check-trace-spark:
	curl --location --request POST 'https://explorer.fusespark.io/' \
		--header 'Content-Type: application/json' \
		--data-raw '{ "jsonrpc":"2.0", "method":"trace_replayTransaction", "params":["0x9787a81511bc6477235a1a94a27097316a290bb22dbd19d437c08a47f2c223f9", ["trace"]], "id":1}'


# create a seq diagram
# make trace tx=0xac1fc8c86029f9d30904abde78c4ff0a4f048713b3af1e3fbb3a9c6ebfea4e04 node=https://my-node.com/234234
trace: 
	ARCHIVE_NODE_URL=$(node) ~./bin/tx2uml/lib/tx2uml.js $(tx) -n openeth
