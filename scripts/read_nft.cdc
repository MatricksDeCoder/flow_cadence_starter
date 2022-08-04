//import CryptoPoops from "../contracts/CryptoPoops.cdc"
import CryptoPoops from 0x9f43dc61c1627cb1
import NonFungibleToken from 0x631e88ae7f1d7c20

pub fun main(account: Address): [UInt64] {

    // get recipient reference
    let publicReference: &CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.CollectionPublic}
    = getAccount(account)
    .getCapability(/public/NFTCollection)
    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.CollectionPublic}>()
    ?? panic("Account has no collection")

    var _result: [UInt64] = publicReference.getIDs()
    return _result
}

/*
flow scripts execute ./scripts/read_nft.cdc 0x9f43dc61c1627cb1 --network=testnet
*/

