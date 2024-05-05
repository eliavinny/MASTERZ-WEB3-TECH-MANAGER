// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GameElements is ERC1155, Ownable {

    string public name="My Game Assets";

    uint256 public constant AXE = 1;
    uint256 public constant SHIELD = 2;
    uint256 public constant GOLD = 3;
    uint256 public constant SILVER = 4;

    constructor(address initialOwner)
    ERC1155("https://bronze-rapid-weasel-963.mypinata.cloud/ipfs/QmYu5Bp1y5MCw7kkA1uLRWL36CB2ya3q2AfHEScbW18NkK/{id}.json")
        Ownable(initialOwner) {

        mint(msg.sender, AXE, 1, "");
        mint(msg.sender, SHIELD, 1, "");
        mint(msg.sender, GOLD, 100, "");
        mint(msg.sender, SILVER, 100, "");

    }

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}
