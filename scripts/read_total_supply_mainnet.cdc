import GoatedGoats from 0x2068315349bdfce5

pub fun main():UInt64 {
    let totalSupply: UInt64 = GoatedGoats.totalSupply
    log(totalSupply)
    return totalSupply
}

/*
flow scripts execute ./scripts/read_total_supply_mainnet.cdc --network=mainnet
*/