// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

uint constant age = 22;
contract immutab{
    string public constant name = "Gokul";
    uint public immutable pincode; //immutable should be declared righthere or within constructor, cannot have bytes & string type

    constructor(){
        pincode = 12345;
    }
}