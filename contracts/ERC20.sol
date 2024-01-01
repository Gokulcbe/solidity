// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AUSD is ERC20 {
    constructor() ERC20("AUSD", "AUSD"){
        _mint(msg.sender, 1000000000000000000); //To create a coin
    }
    
}