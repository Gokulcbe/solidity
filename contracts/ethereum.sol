// SPDX-License-Identifier: MIT
pragma solidity 0.4.26;

contract eth{
    string name;
    uint age;
    bool a;
    int num1;
    uint nump; //only  positive
    address owner;
    address payable owner1;

    // string public name;
    // uint public age;

    constructor() public {
        name = "Gokul";
        age = 22;
    }
    function getInstructor() public view returns (string memory , uint ){
        return (name, age);
    }
}