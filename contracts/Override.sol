// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract One1 {

    function oneFunc() public virtual pure returns (string memory){
        return "One function";
    }
}

contract two1 is One1{
    function oneFunc() public virtual override  pure returns (string memory){
        return "Two function";
    }

    function accessContract1() public pure returns(string memory){
        return super.oneFunc();
    }
}

contract Three is two1{

    function oneFunc() public override  pure returns (string memory){
        return "Three function";
    }
}