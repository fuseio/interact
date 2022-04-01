Optimism Interactions
=====================



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


