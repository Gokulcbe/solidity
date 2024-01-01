// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract constructors{
    string public Name;

    constructor(string memory _name){
        Name = _name;
    }
}