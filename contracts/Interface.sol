// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Interface {
    string name;
    function setname(string memory _name) public {
        name = _name;
    }

    function getname() public view returns(string memory){
        return name;
    }
}