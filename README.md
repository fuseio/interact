Optimism Interactions
=====================

## Todos

```
[ ] - [examples](https://github.com/ethereum-optimism/optimism-tutorial) on local [docker-compose], with saving logs and 'what happened' descriptions
[ ] - [examples](https://github.com/ethereum-optimism/optimism-tutorial) on local [starting manually with scripts]
[ ] - interact with kovan
[ ] - start L2 + DTL locally connected with FUSE in production
[ ] - deployment of optimism [examples](https://github.com/ethereum-optimism/optimism-tutorial) on fuse [starting manually with scripts]
```


## Configuration

`opt` is built on [Seth](https://github.com/dapphub/dapptools/tree/master/src/seth) and uses the same network configuration options, which just like Seth, can be defined in the `~/.sethrc` initialisation file.

Similar to Seth, `opt` also supports transaction signing with Ledger hardware wallets and can run against both local and remote nodes.

Since `opt` will always be used against a known deployment of the system, defaults can be loaded wherever possible. In most cases the only required configuration parameter is the `-C, --chain=<chain>` (`MCD_CHAIN`) option and `-F, --from=<address>` (`ETH_FROM`) sender account when not using a testnet.

Example `~/.sethrc`:

```sh
#!/usr/bin/env bash
export ETH_FROM=0x4Ffa8667Fe2db498DCb95A322b448eA688Ce430c
export SETH_CHAIN=kovan
export ETH_PASSWORD="/home/user/makerdao/pass.txt"
export ETH_KEYSTORE="/home/user/.ethereum/keystore"
export ETH_RPC_URL="https://kovan.infura.io/v3/c928d...."
```

You must add all your sensible information in the .env file like this below, wihtout comments:

```
NET_ARCHIVE_NODE_URL=https://api.archivenode.io/0e60a...
NET_ETH_GOER=https://goerli.infura.io/v3/17509....
NET_ETH_RINKEBY=https://rinkeby.infura.io/v3/175...
NET_ETH_MAINET=https://mainnet.infura.io/v3/175...
NET_ETH_KOVAN=https://kovan.infura.io/v3/175...
NET_FUSE_MAIN=https://rpc.fuse.io
NET_FUSE_SPARK=https://rpc.fusespark.io
NET_OPT_GOER=https://goerli.optimism.io/
```


## Keys

When running the local docker composer file in the ops optimism directory, the L1 node comes with the following funded accounts [that is also transfered to L2 as soon during the docker composer boot]. For the sake of simplicity, I will save some of them in the form of keystore in the repo, so you can play with them, but remmeber to never send real money to this addreesses in a production network.

Note that all these keys are funded in the local docker-compose with 5000 ETH, with transactions sent by the deployer to the bridge.

```
Account #0: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 (10000 ETH)
Private Key: 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

Account #1: 0x70997970c51812dc3a010c7d01b50e0d17dc79c8 (10000 ETH)
Private Key: 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d

Account #2: 0x3c44cdddb6a900fa2b585dd299e03d12fa4293bc (10000 ETH)
Private Key: 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a

Account #3: 0x90f79bf6eb2c4f870365e785982e1f101e93b906 (10000 ETH)
Private Key: 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6

Account #4: 0x15d34aaf54267db7d7c367839aaf71a00a2c6a65 (10000 ETH)
Private Key: 0x47e179ec197488593b187f80a00eb0da91f1b9d0b13f8733639f19c30a34926a

Account #5: 0x9965507d1a55bcc2695c58ba16fb37d819b0a4dc (10000 ETH)
Private Key: 0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba

Account #6: 0x976ea74026e726554db657fa54763abd0c3a0aa9 (10000 ETH)
Private Key: 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e

Account #7: 0x14dc79964da2c08b23698b3d3cc7ca32193d9955 (10000 ETH)
Private Key: 0x4bbbf85ce3377467afe5d46f804f221813b2bb87f24d81f60f1fcdbf7cbf4356

Account #8: 0x23618e81e3f5cdf7f54c3d65f7fbc0abf5b21e8f (10000 ETH)
Private Key: 0xdbda1821b80551c9d65939329250298aa3472ba22feea921c0cf5d620ea67b97

Account #9: 0xa0ee7a142d267c1f36714e4a8f75612f20a79720 (10000 ETH)
Private Key: 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6

Account #10: 0xbcd4042de499d14e55001ccbb24a551f3b954096 (10000 ETH)
Private Key: 0xf214f2b2cd398c806f84e317254e0f0b801d0643303237d97a22a48e01628897

Account #11: 0x71be63f3384f5fb98995898a86b02fb2426c5788 (10000 ETH)
Private Key: 0x701b615bbdfb9de65240bc28bd21bbc0d996645a3dd57e7b12bc2bdf6f192c82

Account #12: 0xfabb0ac9d68b0b445fb7357272ff202c5651694a (10000 ETH)
Private Key: 0xa267530f49f8280200edf313ee7af6b827f2a8bce2897751d06a843f644967b1

Account #13: 0x1cbd3b2770909d4e10f157cabc84c7264073c9ec (10000 ETH)
Private Key: 0x47c99abed3324a2707c28affff1267e45918ec8c3f20b8aa892e8b065d2942dd

Account #14: 0xdf3e18d64bc6a983f673ab319ccae4f1a57c7097 (10000 ETH)
Private Key: 0xc526ee95bf44d8fc405a158bb884d9d1238d99f0612e9f33d006bb0789009aaa

Account #15: 0xcd3b766ccdd6ae721141f452c550ca635964ce71 (10000 ETH)
Private Key: 0x8166f546bab6da521a8369cab06c5d2b9e46670292d85c875ee9ec20e84ffb61

Account #16: 0x2546bcd3c84621e976d8185a91a922ae77ecec30 (10000 ETH)
Private Key: 0xea6c44ac03bff858b476bba40716402b03e41b8e97e276d1baec7c37d42484a0

Account #17: 0xbda5747bfd65f08deb54cb465eb87d40e51b197e (10000 ETH)
Private Key: 0x689af8efa8c651a91ad287602527f3af2fe9f6501a7ac4b061667b5a93e037fd

Account #18: 0xdd2fd4581271e230360230f9337d5c0430bf44c0 (10000 ETH)
Private Key: 0xde9be858da4a475276426320d5e9262ecfc3ba460bfac56360bfa6c4c28b4ee0

Account #19: 0x8626f6940e2eb28930efb4cef49b2d1f2c9c1199 (10000 ETH)
Private Key: 0xdf57089febbacf7ba0bc227dafbffa9fc08a93fdc68e1e42411a14efcf23656e

```



## L2 Geth - Pre-deployed addresses


```
L2_TO_L1_MESSAGE_PASSER   = 0x4200000000000000000000000000000000000000;
L1_MESSAGE_SENDER         = 0x4200000000000000000000000000000000000001;
DEPLOYER_WHITELIST        = 0x4200000000000000000000000000000000000002;
OVM_ETH                   = payable(0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000);
L2_CROSS_DOMAIN_MESSENGER = 0x4200000000000000000000000000000000000007;
LIB_ADDRESS_MANAGER       = 0x4200000000000000000000000000000000000008;
PROXY_EOA                 = 0x4200000000000000000000000000000000000009;
L2_STANDARD_BRIDGE        = 0x4200000000000000000000000000000000000010;
SEQUENCER_FEE_WALLET      = 0x4200000000000000000000000000000000000011;
L2_STANDARD_TOKEN_FACTORY = 0x4200000000000000000000000000000000000012;
L1_BLOCK_NUMBER           = 0x4200000000000000000000000000000000000013;
```

#### Kovan

Run against the latest Kovan deployment by setting the `-C, --chain` option to `kovan`. Specify a sender account when sending transactions using the `-F, --from` option, or via the `ETH_FROM` env variable.

```sh
$ export ETH_FROM=0x4Ffa8667Fe2db498DCb95A322b448eA688Ce430c
$ opt --chain=kovan pay 100
```



**OPTIMISM**

* [optimism-docs](https://community.optimism.io/docs/developers/)
* [optimism-tutorial](https://github.com/ethereum-optimism/optimism-tutorial)

**SOLIDITY**
* [solidity-by-example](https://solidity-by-example.org/)
* [ethereum-in-depth-1](https://blog.openzeppelin.com/ethereum-in-depth-part-1-968981e6f833/)
* [ethereum-in-depth-2](https://blog.openzeppelin.com/ethereum-in-depth-part-2-6339cf6bddb9/)

**TOOLS**
* [evm-rust](https://github.com/rust-blockchain/evm)
* [evm-toolkit](https://github.com/quilt/etk) - Assembler & disassembler
* [hevm](https://github.com/dapphub/dapptools/tree/master/src/hevm#readme)
* [mythx](https://mythx.io/) - Online Security Scan [has remix plugin]
* [interactive-evm](https://www.evm.codes/)
* [bloxy](https://bloxy.info/)
* [ethersplay](https://github.com/crytic/ethersplay) - Disassembler Flow Plotter
* [zulu-crypt](https://mhogomchungu.github.io/zuluCrypt/) - fix: 'chmod 4755 /usr/bin/zuluCrypt-cli'
* [smartbugs](https://github.com/smartbugs/smartbugs) - Bug mining tool
* [oyente](https://github.com/enzymefinance/oyente)
* [solidity-check](https://github.com/xf97/SolidityCheck)

**DAPP-TOOLS**

* [dapp-tools-how-to-use](https://medium.com/@patrick.collins_58673/how-to-use-dapptools-code-like-makerdao-fed9909d055b)
* [dapp-starter-kit](https://github.com/smartcontractkit/dapptools-starter-kit)
* [dapp-example-repo](https://github.com/dapp-org/radicle-contracts-tests/)


**ARTICLES**
* [evm-opcodes](https://medium.com/@cpluser/how-evm-opcodes-run-in-sputnikvm-rust-part-1-6dbe74fd0190)
* [formal-verification-symbolic-execution](https://fv.ethereum.org/2020/07/28/symbolic-hevm-release/) - excelent!
* [formal-verification-tutorial](https://docs.soliditylang.org/en/v0.8.10/smtchecker.html)
* [smt-checker](https://www.aon.com/cyber-solutions/aon_cyber_labs/exploring-soliditys-model-checker/)
* [formal-verifictaion-why](https://medium.com/coinmonks/formal-verification-why-and-how-a104cd702c25)
* [hevm-symbolic-execution-tutorial](https://fv.ethereum.org/2020/07/28/symbolic-hevm-release/)


**EVM**
 * [deconstructing-2](https://blog.openzeppelin.com/deconstructing-a-solidity-contract-part-ii-creation-vs-runtime-6b9d60ecb44c/)
 * [deconstruction-map](https://gist.githubusercontent.com/ajsantander/23c032ec7a722890feed94d93dff574a/raw/a453b28077e9669d5b51f2dc6d93b539a76834b8/BasicToken.svg)


## Solidity to UML [class diagramm]

* [sol2uml](https://github.com/naddison36/sol2uml) - Class diagrams
* [tx2uml](https://github.com/naddison36/tx2uml) - Transaction event diagrams

* [tenderly-cli](https://github.com/Tenderly/tenderly-cli) - Super Tool

* [parity-decoder](https://github.com/k06a/parity-trace-decoder)
* [scribble](https://github.com/ConsenSys/scribble)
* [slither](https://github.com/crytic/slither)
* [trace-decoder](https://github.com/k06a/parity-trace-decoder)
* [tx-decoder](https://ethtx.info/)


## Online Tools

* [tenderly](https://dashboard.tenderly.co/explorer)
* [eth-tx-decoder](https://ethtx.info/)
* [bloxy](https://bloxy.info/)
* [token-flow](https://tokenflow.xyz/)


