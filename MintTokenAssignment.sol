//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Jahanvi_Token is ERC20("THE TOKEN", "TH"), Ownable{
        
        function MintToken(address mintTo, uint amount) public onlyOwner{
            _mint(mintTo, amount* 10**18);
        }

        function BurnToken(uint amount) public {
            _burn(msg.sender, amount* 10**18);
        }
}
