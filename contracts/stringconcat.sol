// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract stringconcat{
    string public name = "Gokul";

    function concat(string memory _a, string memory _b) public pure returns (string memory results){
        return string(abi.encodePacked(_a,_b));
    }
}