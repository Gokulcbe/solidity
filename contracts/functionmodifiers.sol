// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//to restict the user from some kind of action

contract functionmodifier {
    string public name = "Gokul";
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender, "You are not owner");
        _;
    }
    function changeName(string memory _newname) public onlyOwner{
        name = _newname;
    }
}