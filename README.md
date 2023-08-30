# ETH_AVAX_MODULE3
# Create_Mint_Token

This Solidity program helps to create ERC20tokens which can be minted only by the owner of the contract. The tokens can be transferred on the behalf of the owner by someone else, the contract ownership can be transfered to someone else and the tokens can be burnt by anyone who owns the tokens. 

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. Firstly, the 'ERC20' and 'Ownable' contract from 'OpenZepplin' is imported so that their methods can be used to develop the token. The name of the token and the token symbol is passed inside the ERC20 constructor. The "MintTokens()" function calls the "_mint()" function to create tokens, taking the address the tokens have to be minted to as well as the amount that has to be minted. The "BurnTokens()" function calls the "_burn" function and destroys a specified amount of tokens.

```
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
```



## Technologies Used 
- Remix - an online Solidity IDE  
- ethers.js - Library for interacting with Ethereum smart contracts

  
## Authors
- Jahanvi sania


## License

This project is licensed under the MIT License - see [MIT LICENSE] for details
