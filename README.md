# Simple Cadence project to explore

- Cadence Flow project structure
- deploying contracts
- Flow CLI
- Interacting with contracts

# Requirements

- Visual Studio Code
- Visual Studio Cadence Extension
- [Install Flow CLI](https://docs.onflow.org/flow-cli/install/)
  - Mac
  - brew install flow-cli
  - brew update flow-cli

# Folder Structure

flow-cadence-starter
contracts
CryptoPoops.cdc
NonFungibleToken.cdc
scripts
read_nft.cdc
read_total_supply_mainnet.cdc
read_total_supply.cdc
transactions
mint_nft.cdc
setup_collection.cdc
flow.json

- flow.json created using

```
flow init
```

## Creating private/public keys + account

Testnet or Mainnet

```
flow keys generate --network=testnet
flow keys generate --network=mainnet
```

- Create account on [https://testnet-faucet.onflow.org/](https://testnet-faucet.onflow.org/)

## Deploying contracts

Testnet or Mainnet

```
flow project deploy --network=testnet
flow project deploy --network=mainnet
```

- View deployed project on scan (Enter account contract deployed onto)
  https://flow-view-source.com/testnet/

## Reading Contract e.g running scripts

```
flow scripts execute ./scripts/read_total_supply.cdc --network=testnet
flow scripts execute ./scripts/read_total_supply_mainnet --network=mainnet
```

Read nft with arguments

```
flow scripts execute ./scripts/read_nft.cdc 0xfa88aefbb588049d 3  --network=testnet
```

## Running a transaction e.g setting up a collection

```
flow transactions send ./transactions/setup_collection.cdc --network=testnet
```

## Running a transaction with arguments e.g mint nft

```
flow transactions send ./transactions/mint_nft.cdc 0x9f43dc61c1627cb1 --network=testnet --signer=testnet-account
```

# Flow Blockchain + Cadence Notes

## Resources

- [Flow PlayGround](https://play.onflow.org/)
- [Flow Client Library](https://developers.onflow.org/tools/fcl-js)
- [Flow Run Emulator](https://github.com/onflow/flow-emulator/blob/master/README.md#starting-the-server)

- [Flow Blockchain](https://www.onflow.org/)
- [Flow View Deployments](https://flow-view-source.com/testnet/)
- [Flow Block Explorer](https://flowscan.org/)
- [Flow Forum](https://forum.onflow.org/)
- [Emerald Academy](https://academy.ecdao.org/bootcamps/4)
- [Floats](https://floats.city/jacob.find)
- [Flow Client Library Youtube Video Tutorial Jacob](https://www.youtube.com/watch?v=tsnbfq6UWIU&list=PLvcQxi9WyGdGjovbl1IYGzFGmfMPgq_y8)
- [Flow Documentation Tutorias](https://docs.onflow.org/cadence/tutorial/03-resources/)
- [Flow Language Specification](https://docs.onflow.org/cadence/language/)
- [Youtube Learn Cadence](https://www.youtube.com/watch?v=iVevnipJbHo&list=PLvcQxi9WyGdF32YuZABVTx-t3-FsBNCN2)
- [Flow Blockchain Youtube Channel](https://www.youtube.com/c/FlowBlockchain)

- [EMERALD ACADEMY](https://github.com/emerald-dao/beginner-cadence-course)
- [EMERALD BEGINNER DAPP](https://github.com/emerald-dao/beginner-dapp-course)
- [KITTY ITEMS](https://developers.onflow.org/learn/kitty-items/)
- [Dapp Tutorials](https://www.youtube.com/playlist?list=PLvcQxi9WyGdGUx-a4rCsLWn_WKlA9YAXP)
- [Flow NFT Pet Store](https://filecoinfoundation.medium.com/)building-a-flow-nft-pet-store-part-1-e69077d885da
- [NBA Top Shot](https://medium.com/pinata/how-to-create-nfts-like-nba-top-shot-with-flow-and-ipfs-701296944bf)
- [Flow Smart Contract Examples](https://open-cadence.onflow.org/)

- [Flow GUI Browser](https://flowser.dev/)
- [Cadence to JSON](https://github.com/Zay-Codes-Lab/cadence-to-json)
- [Tatum API](https://apidoc.tatum.io/#tag/Blockchain-Flow)
- [Graffle] (https://graffle.io/) read, write, query blockchain using any language
- [Moonpay](https://www.moonpay.com/buy) -> allow users to buy with credit card
- [Wallet API] => custodial wallet dapps
- [Port On Flow](https://port.onflow.org/)

## Notes

Cadence - developed around owning resources and assets. Has in built protection against bugs, encodes safe digital assets with rich programmability.
"""
The utilization of capability-based security, which enforces that access to objects is restricted to only the owner of the object and those who have a valid reference to it. This is Cadence's main form of access control.
"""

5 pillars ->

- Resources and assets, (resources are secure containers and are like structs)
  resources cant be created anyhow, copied and require explicit handling
- Safety + Security;
- Clarity;
- Developer Experience
- Intuiting Ownership with Resources

Self.owner account holding a resource
Contracts are types that can be added, updated, removed from accounts
Structs are value types whereas Resources are linear types
Swap resources using <->
References are copied and are value types

Example hashing array data

```
let data: UInt64 = [1,2,3]
let digest = HashAlgorithm.SHA3_256.hash(data)
``
Example add contracts
```

let code = "70756220636f6e...".decodeHex()[UTF-8] rep
let signer: AuthAccount = ...
signer.contracts.add(
name: "Test",
code: code,
message: "I'm a new contract in an existing account"
)

```

Some Language Aspects
```

let slice = anArray.slice(from: 3, upTo: 6)
let a: UInt8 = 200
let b: UInt8 = 100
let result = a.saturatingAdd(b)
// `result` is 255, the maximum value of the type `UInt8`
// Address = 64bits Uint
let someAddress: Address = 0x436164656E636521
let a: Int? = nil
let singleScalar: Character = "\u{FC}"
fun crashAndBurn(): Never {
panic("An unrecoverable error occurred")
}
// getCurrentBlock().timestamp
// getBlock(at: 70001)?.timestamp

//
[access modifier] [var/let] [variable name]: [type e.g Void]

```







```
