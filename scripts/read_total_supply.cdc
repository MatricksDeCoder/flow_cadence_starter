//import CryptoPoops from "../contracts/CryptoPoops.cdc"
import CryptoPoops from 0x9f43dc61c1627cb1

pub fun main():UInt64 {
    let totalSupply: UInt64 = CryptoPoops.totalSupply
    log(totalSupply)
    return totalSupply
}

/*
flow scripts execute ./scripts/read_total_supply.cdc --network=testnet
*/