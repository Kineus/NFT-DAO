// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IFakeNFTMarketplace {
    function purchase(uint256 _tokenId) external payable;

    function getPrice() external view returns (uint256);

    function available(uint256 _tokenId) external view returns (bool)
}

interface ICryptoDevsNFT {
    function balanceOf(address owner) external view returns (uint256);

    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
}

contract CryptoDevsDAO is Ownable {

    struct Proposal {
        // The NFT to Buy from the secondary marketplace
        uint 256 nftTokenID;
        // when does voting end
        uint256 deadline;

        uint256 yayvotes;
        uint256 nayvotes;

        bool executed;

        mapping(uint256 => bool) voters;
    }

    //create proposal - memberOnly
    //vote on proposal - memberOnly
    //execute the proposal - memberOnly
}