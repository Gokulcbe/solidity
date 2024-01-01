// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract One {
    string public name;
    constructor(string memory _name){//optional.
        name = _name;
    }

    function oneFunc() public pure returns (string memory){
        return "One function";
    }
}

contract Three {

    function oneFunc1() public pure returns (string memory){
        return "One function";
    }
}

contract two is One("Gokul"), Three{
    function twoFunc() public pure returns (string memory){
        return "Two function";
    }

    function callFuncOne() public pure returns (string memory){
        return  oneFunc();
    }
}