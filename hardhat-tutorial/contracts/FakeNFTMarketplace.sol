// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FakeNFTMarketplace {
    // Maps tokenIDs to Owners
    mapping(uint256 => address) public tokens;

    //price of NFTs
    uint256 nftPrice = 0.01 ether;

    // purchase function that takes some ETH and marks the msg.sender as the owner of the NFT
    function purchase(uint256 _tokenId) external payable {
        require(msg.value == nftPrice, "NOT_ENOUGH_ETH");    // make sure the person sent enough eth
        require(tokens[_tokenId] == address(0), "NOT_FOR_SALE");

        tokens[_tokenId] = msg.sender;
    }

    function getPrice() external view returns (uint256) {
        return nftPrice;
    }

    function available(uint256 _tokenId) external view returns (bool) {
        if(tokens[_tokenId] == address(0)){
            return true;
        }
        return false;
    }
}