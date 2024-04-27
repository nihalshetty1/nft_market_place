// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

//ERC721URIStorage: This is an OpenZeppelin library contract that extends the ERC721 standard with support for token URIs.
contract NFT is ERC721URIStorage {
    uint public tokenCount; //tokenCount: Keeps track of the total number of tokens minted in the contract
    constructor() ERC721("DApp NFT", "DAPP"){}
    //mint: Allows users to mint a new NFT. It takes a _tokenURI parameter, which represents the URI for the token's metadata.
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount ++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}