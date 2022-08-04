import CryptoPoops from 0x9f43dc61c1627cb1
import NonFungibleToken from 0x631e88ae7f1d7c20

transaction() {

    prepare(signer: AuthAccount) {

        // create empty collection
        let emptyCollection: @NonFungibleToken.Collection  <- CryptoPoops.createEmptyCollection() 
        log("Empty Collection Created")

        // save empty collection 
        signer.save(<-emptyCollection, to: /storage/NFTCollection)
        
        // create public capability 
        signer.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic,CryptoPoops.CollectionPublic}>(/public/NFTCollection, target: /storage/NFTCollection)
    }

}
