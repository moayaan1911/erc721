// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/utils/Counters.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("Ayaan", "AAA") {}

    using Counters for Counters.Counter;
    Counters.Counter private _tokenId;

    function mintNFT(address recepient, string memory tokenURI)
        public
        onlyOwner
        returns (uint256)
    {
        _tokenId.increment();
        uint256 newItemId = _tokenId.current();
        _mint(recepient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
