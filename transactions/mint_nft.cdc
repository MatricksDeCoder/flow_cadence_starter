import CryptoPoops from 0x9f43dc61c1627cb1
import NonFungibleToken from 0x631e88ae7f1d7c20

transaction(
    _recipient: Address, 
    _name: String,
    _favoriteFood: String,
    _luckyNumber: Int 
)
    {

    prepare(signer: AuthAccount) {


        // get recipient reference
        let recipientReference: &CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.CollectionPublic}
        = getAccount(_recipient)
        .getCapability(/public/NFTCollection)
        .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.CollectionPublic}>()
        ?? panic("Account has no collection")
        log("Retrieved recipient reference")

        // get Minter Resource reference
        let minterReference: &CryptoPoops.Minter = 
        signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
        ?? panic("Account does not have minter ref/ minting capabilities")

        // mint token with Minter Reference
        let token: @CryptoPoops.NFT <- minterReference.createNFT(
            name:_name,
            favouriteFood:_favoriteFood, 
            luckyNumber: _luckyNumber
        )
        log("Token minted with id ".concat(token.uuid.toString()))
            
       // deposit to account token
       recipientReference.deposit(token: <- token)
       log("Token deposited to ".concat(_recipient.toString()))

       // check account recipient e.g 0x02 has token 
       var _result: [UInt64] = recipientReference.getIDs()
       log("Retrieved receipients collection")
       log(_result)
       log("Retrieved minters collection")
       log(_result)
       log(_result.length == 1)
       let id: UInt64 = _result[0]
       log(id)

       // get token details
       let _depositedToken: &CryptoPoops.NFT = recipientReference.borrowAuthNFT(id: id)
       log(_depositedToken.name)
       log(_depositedToken.favouriteFood)
       log(_depositedToken.luckyNumber)

    }

}
