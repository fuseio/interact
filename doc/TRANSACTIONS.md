


## Using the cross-dom-bridge



## Deposit ETH
* On L1:436631019 Gwei    On L2:49999991 Gwei
Transaction hash (on L1): 0x3ee89e5b402e789106e747a2734c0aca6cf087aba6b562c362d2486dfd8e9125
```
* https://dashboard.tenderly.co/tx/kovan/0x3ee89e5b402e789106e747a2734c0aca6cf087aba6b562c362d2486dfd8e9125
* https://kovan.etherscan.io/tx/0x3ee89e5b402e789106e747a2734c0aca6cf087aba6b562c362d2486dfd8e9125
```
Waiting for status to change to RELAYED
Time so far 16.148 seconds
* On L1:436279246 Gwei    On L2:49999992 Gwei
depositETH took 93.037 seconds


## Withdraw ETH

- On L1:436279246 Gwei    On L2:49999992 Gwei

### crossChainMessenger.withdrawETH(centieth)
```
https://dashboard.tenderly.co/tx/optimistic-kovan/0xc533f744b3cb44b30fd5408e4e9f0f9263a5d5c8d141d079a8eaa7f2353efe3e

https://kovan-optimistic.etherscan.io/tx/0xc533f744b3cb44b30fd5408e4e9f0f9263a5d5c8d141d079a8eaa7f2353efe3e

Transaction hash (on L2): {"nonce":13,"gasPrice":{"type":"BigNumber","hex":"0x2710"},"gasLimit":{"type":"BigNumber","hex":"0x01c2be"},"to":"0x4200000000000000000000000000000000000010","value":{"type":"BigNumber","hex":"0x00"},"data":"0x32b7006d000000000000000000000000deaddeaddeaddeaddeaddeaddeaddeaddead0000000000000000000000000000000000000000000000000000002386f26fc10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000","chainId":69,"v":173,"r":"0x6e03ee1ee4134d14a9fb821b69cad5768cd6ebe835f3831c563d77262ac6a7c5","s":"0x2cabe297d47b9a8c13f35b56d3a845ba8f0708e48252e532c17845c2ab1df9d7","from":"0x4828699dCbe7D449cE209af47Ed285EbA9A555a9","hash":"0xc533f744b3cb44b30fd5408e4e9f0f9263a5d5c8d141d079a8eaa7f2353efe3e","type":null,"confirmations":0}

```

### crossChainMessenger.waitForMessageStatus(response.hash...)
Waiting for status to change to IN_CHALLENGE_PERIOD
Time so far 8.491 seconds
### await crossChainMessenger.waitForMessageStatus(...IN_CHALLENGE_PERIOD)
In the challenge period, waiting for status READY_FOR_RELAY
Time so far 395.558 seconds
### await crossChainMessenger.waitForMessageStatus(...READY_FOR_RELAY)
Ready for relay, finalizing message now
Time so far 409.993 seconds



### crossChainMessenger.finalizeMessage(response)

-hash: 0x8091e3b8091566f1bc400b7eb77159f462254566bdbfcfb0cfcb5009065a14d4

We will call the "Proxy__OVM_L1StandardBridge": "0x22F24361D548e5FaAfb36d1437839f080363982B",

```
https://dashboard.tenderly.co/tx/kovan/0x8091e3b8091566f1bc400b7eb77159f462254566bdbfcfb0cfcb5009065a14d4

https://kovan.etherscan.io/tx/0x8091e3b8091566f1bc400b7eb77159f462254566bdbfcfb0cfcb5009065a14d4

Transaction hash (on L1): {"type":2,"chainId":42,"nonce":24,"maxPriorityFeePerGas":{"type":"BigNumber","hex":"0x9502f900"},"maxFeePerGas":{"type":"BigNumber","hex":"0x9502f90e"},"gasPrice":null,"gasLimit":{"type":"BigNumber","hex":"0x0b7fed"},"to":"0x4361d0F75A0186C05f971c566dC6bEa5957483fD","value":{"type":"BigNumber","hex":"0x00"},"data":"...copied below.... too long....","accessList":[],"hash":"0x8091e3b8091566f1bc400b7eb77159f462254566bdbfcfb0cfcb5009065a14d4","v":1,"r":"0xcd41b2760b13fb51079eb54efceda034f77d51c432801b10c036c0d647080f9e","s":"0x79d65274471fe2307f26c769539f85eb3c60f596b068069ed02190420746e6e8","from":"0x4828699dCbe7D449cE209af47Ed285EbA9A555a9","confirmations":0}

```
Waiting for status to change to RELAYED
Time so far 424.304 seconds

- On L1:444439383 Gwei    On L2:39999991 Gwei
withdrawETH took 448.947 seconds



## Contracts List


```json
{
  "Deployer" : "0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266",
  "Deployer2" : "0x4828699dcbe7d449ce209af47ed285eba9a555a9",
  "AddressDictator": "0x8676275c08626263c60282A26550464DFa19ABd6",
  "BondManager": "0xc5a603d273E28185c18Ba4d26A0024B2d2F42740",
  "CanonicalTransactionChain": "0xf7B88A133202d41Fe5E2Ab22e6309a1A4D50AF74",
  "ChainStorageContainer_CTC_batches": "0x1d6d23989ba6a6e915F0e35BBc574E914d4ed092",
  "ChainStorageContainer_SCC_batches": "0x122208Aa20237FB4c655a9eF02685F7255DF33E8",
  "ChugSplashDictator": "0x23d87F2792C2ca58E5C1b7BD831B0fbDDEEe0ED9",
  "L1StandardBridge_for_verification_only": "0x51bB1dc7Ebb531539f6F8349D4177255A9994d1C",
  "Lib_AddressManager": "0x100Dd3b414Df5BbA2B542864fF94aF8024aFdf3a",
  "OVM_L1CrossDomainMessenger": "0xaF91349fdf3B206E079A8FcaB7b8dFaFB96A654D",
  "Proxy__OVM_L1CrossDomainMessenger": "0x4361d0F75A0186C05f971c566dC6bEa5957483fD",
  "Proxy__OVM_L1StandardBridge": "0x22F24361D548e5FaAfb36d1437839f080363982B",
  "StateCommitmentChain": "0xD7754711773489F31A0602635f3F167826ce53C5",
  "L2_TO_L1_MESSAGE_PASSER" :"0x4200000000000000000000000000000000000000",
  "L1_MESSAGE_SENDER" :"0x4200000000000000000000000000000000000001",
  "DEPLOYER_WHITELIST":"0x4200000000000000000000000000000000000002",
  "OVM_ETH":"0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000",
  "L2_CROSS_DOMAIN_MESSENGER":"0x4200000000000000000000000000000000000007",
  "LIB_ADDRESS_MANAGER":"0x4200000000000000000000000000000000000008",
  "PROXY_EOA":"0x4200000000000000000000000000000000000009",
  "L2_STANDARD_BRIDGE":"0x4200000000000000000000000000000000000010",
  "SEQUENCER_FEE_WALLET":"0x4200000000000000000000000000000000000011",
  "L2_STANDARD_TOKEN_FACTORY":"0x4200000000000000000000000000000000000012",
  "L1_BLOCK_NUMBER":"0x4200000000000000000000000000000000000013"
}

```

## Tutorial Code

```typescript
#! /usr/local/bin/node

// Transfers between L1 and L2 using the Optimism SDK

const ethers = require("ethers")
const optimismSDK = require("@eth-optimism/sdk")
require('dotenv').config()

const network = "kovan" 

const mnemonic = process.env.MNEMONIC
const l1Url = process.env.KOVAN_URL
const l2Url = process.env.OPTI_KOVAN_URL

console.log(l1Url)
console.log(l2Url)

// Contract addresses for DAI tokens, taken 
// from https://static.optimism.io/optimism.tokenlist.json
const daiAddrs = {
  l1Addr: "0x4f96fe3b7a6cf9725f59d353f723c1bdb64ca6aa",
  l2Addr: "0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1"
}    // daiAddrs

// Global variable because we need them almost everywhere
let crossChainMessenger
let l1ERC20, l2ERC20    // DAI contracts to show ERC-20 transfers
let addr    // Our address

const getSigners = async () => {
    const l1RpcProvider = new ethers.providers.JsonRpcProvider(l1Url)    
    const l2RpcProvider = new ethers.providers.JsonRpcProvider(l2Url)
    const hdNode = ethers.utils.HDNode.fromMnemonic(mnemonic)
    // const privateKey = hdNode.derivePath(ethers.utils.defaultPath).privateKey
    const privateKey = process.env.PRIV_KEY
    const l1Wallet = new ethers.Wallet(privateKey, l1RpcProvider)
    const l2Wallet = new ethers.Wallet(privateKey, l2RpcProvider)

    return [l1Wallet, l2Wallet]
}   // getSigners


const setup = async() => {
  const [l1Signer, l2Signer] = await getSigners()
  addr = l1Signer.address
  crossChainMessenger = new optimismSDK.CrossChainMessenger({
      l1ChainId: 42,   // For Kovan, it's 1 for Mainnet    
      l1SignerOrProvider: l1Signer,
      l2SignerOrProvider: l2Signer
  })
  l1ERC20 = new ethers.Contract(daiAddrs.l1Addr, erc20ABI, l1Signer)
  l2ERC20 = new ethers.Contract(daiAddrs.l2Addr, erc20ABI, l2Signer)  
}    // setup



// The ABI fragment for an ERC20 we need to get a user's balance.
const erc20ABI = [  
    // balanceOf
    {    
      constant: true,  
      inputs: [{ name: "_owner", type: "address" }],
      name: "balanceOf",
      outputs: [{ name: "balance", type: "uint256" }],
      type: "function",
    },
  ]    // erc20ABI



const gwei = 1000000000n
const eth = gwei * gwei   // 10^18
const centieth = eth/100n
const dai = eth   


const reportBalances = async () => {
  const l1Balance = (await crossChainMessenger.l1Signer.getBalance()).toString().slice(0,-9)
  const l2Balance = (await crossChainMessenger.l2Signer.getBalance()).toString().slice(0,-9)

  console.log(`On L1:${l1Balance} Gwei    On L2:${l2Balance} Gwei`)
}    // reportBalances



const reportERC20Balances = async () => {
  const l1Balance = (await l1ERC20.balanceOf(addr)).toString().slice(0,-18)
  const l2Balance = (await l2ERC20.balanceOf(addr)).toString().slice(0,-18)
  console.log(`DAI on L1:${l1Balance}     DAI on L2:${l2Balance}`)  
}    // reportERC20Balances





const depositETH = async () => {

  console.log("Deposit ETH")
  await reportBalances()
  const start = new Date()

  const response = await crossChainMessenger.depositETH(gwei)
  console.log(`Transaction hash (on L1): ${response.hash}`)
  await response.wait()
  console.log("Waiting for status to change to RELAYED")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)
  await crossChainMessenger.waitForMessageStatus(response.hash, 
                                                  optimismSDK.MessageStatus.RELAYED) 

  await reportBalances()    
  console.log(`depositETH took ${(new Date()-start)/1000} seconds\n\n`)
}     // depositETH()



const depositERC20 = async () => {

  console.log("Deposit ERC20")
  await reportERC20Balances()
  const start = new Date()

  // Need the l2 address to know which bridge is responsible
  const allowanceResponse = await crossChainMessenger.approveERC20(
    daiAddrs.l1Addr, daiAddrs.l2Addr, dai)
  await allowanceResponse.wait()
  console.log(`Allowance given by tx ${allowanceResponse.hash}`)
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)

  const response = await crossChainMessenger.depositERC20(
    daiAddrs.l1Addr, daiAddrs.l2Addr, dai)
  console.log(`Deposit transaction hash (on L1): ${response.hash}`)
  await response.wait()
  console.log("Waiting for status to change to RELAYED")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  
  await crossChainMessenger.waitForMessageStatus(response.hash, 
                                                  optimismSDK.MessageStatus.RELAYED) 

  await reportERC20Balances()    
  console.log(`depositERC20 took ${(new Date()-start)/1000} seconds\n\n`)
}     // depositETH()



const withdrawERC20 = async () => { 
  
  console.log("Withdraw ERC20")
  const start = new Date()  
  await reportERC20Balances()

  const response = await crossChainMessenger.withdrawERC20(
    daiAddrs.l1Addr, daiAddrs.l2Addr, dai)
  console.log(`Transaction hash (on L2): ${response.hash}`)
  await response.wait()

  console.log("Waiting for status to change to IN_CHALLENGE_PERIOD")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)
  await crossChainMessenger.waitForMessageStatus(response.hash, 
    optimismSDK.MessageStatus.IN_CHALLENGE_PERIOD)
  console.log("In the challenge period, waiting for status READY_FOR_RELAY") 
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  
  await crossChainMessenger.waitForMessageStatus(response.hash, 
                                                optimismSDK.MessageStatus.READY_FOR_RELAY) 
  console.log("Ready for relay, finalizing message now")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  
  await crossChainMessenger.finalizeMessage(response)
  console.log("Waiting for status to change to RELAYED")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  
  await crossChainMessenger.waitForMessageStatus(response, 
    optimismSDK.MessageStatus.RELAYED)
  await reportERC20Balances()   
  console.log(`withdrawERC20 took ${(new Date()-start)/1000} seconds\n\n\n`)  
}     // withdrawERC20()



const withdrawETH = async () => { 

  console.log("Withdraw ETH")
  const start = new Date()
  await reportBalances()

  // WITHDRAW
  const response = await crossChainMessenger.withdrawETH(centieth)
  const resJson = JSON.stringify(response)
  console.log(`Transaction hash (on L2): ${resJson}`)
  await response.wait()

  // WAIT
  console.log("Waiting for status to change to IN_CHALLENGE_PERIOD")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)

  await crossChainMessenger.waitForMessageStatus(response.hash,
    optimismSDK.MessageStatus.IN_CHALLENGE_PERIOD)
  console.log("In the challenge period, waiting for status READY_FOR_RELAY") 
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  

  await crossChainMessenger.waitForMessageStatus(response.hash, 
                                                optimismSDK.MessageStatus.READY_FOR_RELAY) 
  console.log("Ready for relay, finalizing message now")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  

  // FINALIZE
  const response2 = await crossChainMessenger.finalizeMessage(response)
  const resJson2 = JSON.stringify(response2)
  console.log(`Transaction hash (on L1): ${resJson2}`)
  console.log("Waiting for status to change to RELAYED")
  console.log(`Time so far ${(new Date()-start)/1000} seconds`)  

  await crossChainMessenger.waitForMessageStatus(response, 
    optimismSDK.MessageStatus.RELAYED)
  await reportBalances()   
  console.log(`withdrawETH took ${(new Date()-start)/1000} seconds\n\n\n`)  
}     // withdrawETH()


const main = async () => {    
    await setup()
    await depositETH()
    await withdrawETH() 
    // await depositERC20()   
    // await withdrawERC20()

}  // main



main().then(() => process.exit(0))
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })





```




```
0xd7fd19dd00000000000000000000000022f24361d548e5faafb36d1437839f080363982b000000000000000000000000420000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000001926d000000000000000000000000000000000000000000000000000000000000018000000000000000000000000000000000000000000000000000000000000000a41532ec340000000000000000000000004828699dcbe7d449ce209af47ed285eba9a555a90000000000000000000000004828699dcbe7d449ce209af47ed285eba9a555a9000000000000000000000000000000000000000000000000002386f26fc100000000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f866bc28abe78a4cb0d5765174366861e30e7f38e1154033b99f3d94ff0a75f200000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000001a000000000000000000000000000000000000000000000000000000000000002e00000000000000000000000000000000000000000000000000000000000000c600000000000000000000000000000000000000000000000000000000000029f50b4c0a8c4a73a0298410678593e91cf9ddd30515dcec4975eb4861f01312aaf5e000000000000000000000000000000000000000000000000000000000000006500000000000000000000000000000000000000000000000000000000001cf6fa00000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000624c4cdc0000000000000000000000009a2f243c605e6908d96b18e21fb82bf288b19ef3000000000000000000000000000000000000000000000000000000000000001900000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000007278017cac77d4e3859ad786cac2a562f8bc0f4cc1dc12beac8ff8ac238ec72fab0cde8d37f896c2ccc44f478b36433ea4988496b83e8597d3e64972be11e2c51be6eed8e79ba6149a56cb051eb4bd664d371b91ced68764f323cbea28ea7656fb544ed48254c25e2e4a8562372d143b756cbc265084453b069d83de2b49ff9c40284b3f1e6cb3845701ae68c4beda2499c2fd88c6841bb56c7c57bc8496a7dd51be1da785c33b9ef8f2152e4647ae24d28a38049322c1b8bea73bd3fdc985bb34a9a33cd916c97803129a37006a6d683f250d9004918f44873f8d627878f23fc000000000000000000000000000000000000000000000000000000000000095ff9095cb90214f90211a0d2334525320d86964ccd617d8560ab726048322d4748b78a4789ea0b4b6440f3a07988526af753797f786389d64aba77def7a6469669ca617cb90befbd443963f8a0557fcd5356e16960433c4786674589268167c118eb9ef87fd679c5ee8e66a14ca0c2a7565c0a8f14678849a9999a46b28da8ea5b4e25c186ef9ee89d3c3ba1f2e3a0b4ce7f27f0e8aa87ead1f3dd3978d908f996fbfd3ee421ea2044d834b8e39cfaa0b4851e7e1a4a75918a6a63a06819a35de18a10e952493f2d71bb015fe42751baa0f1f3b2d6ed8090bd21a336b003a6f4a87ec2142d9f6f8d20e71722d9519469aba0fa6172a4ddd0e33c87616c9edd10ee1259627272a0ba0d533f0e750e78d6a3c5a06cb2a883a654e1e1d4b0121654de955bb34ac13dda575069e4db984860dc713ba002855003fb99ae87d2df26de65e86214504ab4ea9f80eed7935a34ad3040aca7a0eb050f38e3896deb0bbad0e9a44cdbdfa1c3d762e3bed5daa052302978464fa3a0cd5e625c5bd3c6f275df6f59456704d578d2ac7befdc91e2c568b0c5e0760090a0c4b2e8146e6deae10b9a11b62b74886bd0f61d5411a7555eb4b1a1acadc60186a0a435f19ef871688bbbcaf8b7b49714b301e154a5204371473688f012b5118b2ca0e3088d568fcfa95b419eee59073d8f3a0e06b43cddbc1c307f7c2e91f8bebc20a07bedc7c796d5f2864c7bda3148ab509a510fa2b250c4d5d8b5f354f5c77cd4fc80b90214f90211a0769406ae6bd42b08f5b39eaca828867237d0a540e4019ed6bb6288a5d88a8a6aa07914fe71af1ef3deda7d4794cc1aedf283ff414783210fb7013505f575fec5aea0869cdadeefbed8dc34a6e5edb37f0084a8b8740584ac3d7019fff15ae19bec8fa0c7dbc967e4c2562c6b4bc4349d36d1f80f4936be9a138dd782b0f9570ada8285a042408974a12858628a17656b2f41f312dc93b813a81c2d91d9e933028f6bf6d3a095aa813a9fcf96f0303f6e28a3cfb2e16ee2d964f1d69814717bfbb476532ceba07e7896b69cec7c3985608042f972b514b703f35c303ce47b062a350634f17e59a0d3c71b0ae267ed3ed9c26e2a7308537f91aee03fccbd8c034adc7aa71782a4c0a0af0dfbed6427af4af9502fc99b9073e7abe1577def16b682a6ad475a93c6fbf4a0103f73458828037ac13c6b8ed12c972a83c8ec25bd7b6eef0f5e026e960ffcb9a040187bb5df9156216fce628ac5e4d1a363dc73288fcbb37d2c80254acbae02bda0a072844dbbf7bd685928613e3b8d79aa16d891e7154de560a5cc35eb2300abd2a072cbfdc73d5ddd99873336de5c74cc8b1429fd67e7e7970b06c276b0a309dd69a0e88ead74cba6c45bf0cf2a4a580c3a707136a17c849b6e27cfe5a595fcc3d9b4a0763482b3796c0d88f7b0e854bdd8a37be4ba02e667951caafd1cf48e41b67475a07b4b54cefb192ee89babdf03ff8fb07a3206044855a2183ea611700cd96b566480b90214f90211a067ec3fafcc89e959dd9c6261d8e3706dc8dac7dfb68813f612e9572f90b70073a05e101ff8cd72bb0ed7a66996f6da23d85fad11666ae87600e42355fdc5e0be5ba009f9c1e760bb15a754df000a917750f96c22c64dce0ab940965170655b0d1f6da08a5b6f2e389fe00cd99a188ffbce08044706f4a6f91fbad227b9f1f79af1d070a09791c2b5f832926e15230682b1ac23f687dcee1e7e8bc275f94660e49ee09d86a01f60f432e3d58ec0a65294dfd6b596ba1bb579a43a11b2507607d6d1a19da219a03ffaeeb2aef279b021f858b9c9f545155dac0b4d8aa38e9705e76e252f4ab488a0e255bf4386e80ee92eb9fa031251ead83bafc66c7c26eb93bbc7ba63fc7cb408a0f0eb19155838d389fea858fea180b62b54ec31ebff6219473fe8981a0946cf2ba0b82ad5b4727af0c39628d9778439a3a5a513f8ad2434ebb3f16b0c07ddbb69ffa038bb37f6aa8380caf5aa94e40c52284f4a7a3b35565817ebf255a84140c7b027a084067af4a97b0569efa00b91669d90010b6d1da8bbd8b5f479c6018bbc32fc6ba00f80f990746fe7c065bdda0623700143d38adcd902e903b151d5c71a5be479caa077a69a7344a83c5dc4004e95cbbe09074168c23f05c6e97c04abafdfa299248aa0b7728e14e03e7c9d65257a2238ae640c17666691cdc85fc58c1f8b006d081401a0eb380ac2ff89c808fb55ccb9d44fffcdd8992226fcf666d4a328bcd7977c1a0c80b90214f90211a0e7438e2a12eb81ef3c4893be2c206b9aeab0012617c80707c8fb330e9391120aa04666dab338afc3c2a478bb797ac588d4802cd08941a9f5379fbb0ffeb240c670a0b7b764d291254e09096556da6cc91e0965680bb5a66e3d57d0a08ab9059aab14a005bd31fd6bb123f2884d1800faa2446653d11479bcbc96c3433c86837aff9c14a054c84fdb2220a783dd89b1b169c3226022229b22c616cb51942b37bad9694442a08662c55c8848d288501d6617c8f3117c942687a6604ebf1525b93c07fedc00dda03aefaa57dd008addc3e457d34383627653abbc435cffaeacc9cda78024dfe9a5a07dbecf2ed01be0bf90ee9f90c43e6eac42bb2eea90ecd6bc90b0d03e19beebf4a0afdfdea177cd13691f65112ce68838c4f8b9e7d9404b8b942d74e749b5fac67aa07d573ce1e79b6c797c9cdd80275a80adf70f54d6c382df648796c7587109d811a01e4096c41d10e5b6fd68acbfce2ca7675c3a7fcc1ec20e0514f59179ee0caa22a05826c1b59b3f2684bd79dd1957ebff053cfaeb3bb624fb6d3c287d79808a7352a082fd8a1acfcaa13bb7da7e7daab16b54e397e1adbf3237fe9e88173575706300a049d5c376740651235318f460b692cd0cd787dc19b01e0d199baff032e09d56c5a0c8842551b02b25579f187b15ac7b72201d4a623fa216de57ff91e62b3ce6292fa03f62363702d6c772856216c2e23f0d6b917e4eb6a7a5bf318df399a3358811b880b893f891a052be4fde084b85f790e465522771afb29f61842413e597f481126ad50fb08e7ca0fe3d394f96b89875fac3bc58bdf12bb4fc42c58e58b5ce5e9b494dc61d3ccbba80a0002aa4877ae2aa09cd8795874dc6f67868543344db75978a5e19251b0623559880808080a043a76460cd4cad8621467dce67592fb2f5adb05cbe926ad333b76b87302440088080808080808080b869f8679e311b46a2440f3eaf346b6c1ce588ed08712591822a258c5a1c4cf44cd0c9b846f8448080a0788baf7c7ec90d69edca55246e3b081b321b5f337425ba1969e6abc47eb3ea9da011a24190f7e396e61e0fdf84fa138cdbb67aeba7b4dcbb1f444447cb53f5ae5f0000000000000000000000000000000000000000000000000000000000000006e0f906ddb90214f90211a03c512e0eb8d91f8ce4c6fcd99a751241a534a08dc45efc163002859ece34ad62a006b5ba9babb8b27cd5e39ca7fd2f6f4b8a21854d4f2ba99ac9d60fe8b7f6f417a07bc55f23acee0315a0de0be3b0be6821b13c702609e2aa1e632e7d4644184d91a0cab09e37d4bc3c772c5a857c076a91938c7d0f7e39213b7022e370cafe7888f3a0f306fa62e37db7bec33407c9c176ecabd96dadec4c0def44e8f7af40d87c0a39a090ac689762cfe5780397058e38333f42bbed6f67a28660a792c3f211f630cf6ea0fbf783be2891e69c610ec996b318b9dc6fc5ced0ed1bdc8d7d5b0916fa04ae76a0e5c8344d8531f9ee107f3030e00a0f1f17a2f6c0785167ea77cce9eb05789280a062de8349120e890d5d5f22c955fcb4f972e172d819369ebba2a7daa9a4e15097a0a4e68a26c7a664bd26018b9c88574fbbe6bb619ada9261c74d817488a3a1e702a099b35e4697b9f49932f472c58594c4180f6919e1a90b184d1a3d825c23adbdf1a00a9ae941ceef01289d34d3275222fa9162d831a3b1d4f352177bb26710a9d62fa0f39f56aa49e19ec276143ef7e4c5b01be298efae7e94be611e8ed226b569bc27a01127b170753f2965e7fa628317905f6d8e280c3aeebb997ebbc9d455f98a52c5a04bafc0945e6be156e9327f22421f00cdee8a2edae45c1e8e1a1a101ce9362a24a0b60280d4174b89c95c46320eeef0b6950b031518773ea22678947a3bac7d558680b90214f90211a0357349e4eb04b0a898dbf2d959c2a61e4e347b0db4258586bb81d02f537dabc6a0bab045f26cb5e5e13802dca9742f5a7a3216c4474ccbbc48a6ad17fac6739ceba0988d236f340a2d83c7c53e3b5021f721d7753b2e18fb1c6b1d98f4bd38e2b02fa0e683d166927784838a72a599ea4e3a78d6d8ea2f0ce93d19b6b4dd7cd151d7cda04ab53c4b4107f570938f1d644889a33446635f3e49fb94ed3ae16fe678fab6d0a0b2e241fc8980f8824b12989d55d9e389672d9889e9e1a27a057360646674e5d7a06f4d14e45273c0afc7285ab71adca77b02a2d5f95ca3b266919635d0ab0b66e5a04a6b206053201777cfdb117ab6d414e13d2699e450898f4190bb1c35dc3f92a3a0934e9b10f9a929924653111d692261d70c99942001f9cc8fa24ea638cbf20554a0c89c256b66f13f09c547e4d230cb23cf3fd5ad1205be885b05014b7e6ae040dba0fceb064056881e8addb7c9d74d30cdd8d67cfe03c53e0d0c4ead19c4315e57d0a08a21bb19a2c10431a60b1da375890d25d5e5c4e56746a99151296a3f46689de4a043384d6f77b601a4778872af0f167ac7e0fe748166a10f1694865b44c8259476a0c01d5c414fa78b5f2dbc4ac4e6749e663695f6e27c3bcc75c6a520f07d048e00a04309b911423ec792d5e93397a1e3a2772bb7a596e5a873e2f7cc95ba31d09e9ea08120cc7217afcc2451eed9ea20d6f97fcf210935916d15296194c8bc60f7397580b90214f90211a0c7a4fb0fb5eed6cee49c0ae4766d72598dbf6884d4f2363a2f0671752fc87c53a06c5e0198aa14e29210e3537d7a3e776c900b43f887e10428f6a6c5904ce4154aa0a3994a1b575c03275b1517d390b3cf4365b92f12e840904ace342e570f65d901a05d9ad1febf5d0863d8a1f5b214d88fde78b1f126d5e6f847ed54d0a6d44d437ca05b97ae12762d14214448d158032b998ffc5208450a12211e0f47cecd508ba779a033cf0e7c3008258271a704667529682106e561bc38419520740ad4eef8b3fca9a0be6d892cf41f74bca4b63769d51c6e065477d29f0f3a052efeebf5d7332674b0a0b58e5de5cc4dd1a10b79c6205724d956b5ac692810bfd93aed2b9d1a0449403aa005d4712d9118d3c60a74bb02d4653cfbd58a3930e7de03ea40b495a33d882c68a04ba1832c6ca00f83b5e35244dcb6783d19d117c61d9c44cd19ed624700c98785a064934ace360e4ded9ae6f007786e8933565d80a4ce8189d7c31dbdf759a7f381a0b699dc7fd4e57c16a5a3eef28406120d22439ef4d24edb4a585c9bcc6e6826e7a0d1605b940ce06748b37fb7bb1855b0d3c8b124df94e4be9f3634b0e42b4f65a9a0209215ede27fb795233a071cbad07ccf060844f2e5413dad604de5b5972a9161a007002d12264a048cd9d00eea703d6e86acebdd2f1d3ee96fc171c57728409b56a0fc7035a0964b39f028674989be9eb3241b891f72ae151c3cfba9158e7e80302980b873f8718080a05177cf6c7201f0802493b659c8a8e024fffba0c46c0face64345d70ceeb184b78080808080808080a0389b53c43f7c5fa4972e9cea78f68c8e1ba127cda440683ae16987038b96bad8a0fe336f748db9adbabb7f465a6359d247b4181413bce8f27dd1cca5d07b390d7880808080a2e19f2023929aa8c752b7a612fcec6bd38fdcdc2b704b4ef7a0c018a2627396efc201

```
