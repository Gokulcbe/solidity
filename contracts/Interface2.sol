// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface Interface2 { //to interface with already deployed contract
    function setname(string memory _name) external ;

    function getname() external view returns (string memory);

    //we cant declare state var inside interface, but we can declare enum and struct
    enum orderstate {ordered, shipped, delivered}
    struct vehicle {string car; string truck;}
}

contract Access {
    function callSetName() public {
        Interface2(0xcD6a42782d230D7c13A74ddec5dD140e55499Df9).setname("Gokul");
    }

    function callGetName() public view returns(string memory){
        return Interface2(0xcD6a42782d230D7c13A74ddec5dD140e55499Df9).getname();
    }
}