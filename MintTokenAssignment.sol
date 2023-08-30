//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Jahanvi_Token is ERC20("THE TOKEN", "TH"), Ownable {
        
    constructor(uint256 initialSupply) {
        _mint(msg.sender, initialSupply * 10**18);
    }

    function TransferToken(address to, uint256 amount) public returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function MintToken(address mintTo, uint256 amount) public onlyOwner {
        _mint(mintTo, amount * 10**18);
    }

    function BurnToken(uint256 amount) public {
        _burn(msg.sender, amount * 10**18);
    }
}
