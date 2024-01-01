// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract One {
    function publicOneFunc() public pure returns (string memory){
        return "Public one func called";
    }

    function internalOneFunc() internal  pure returns (string memory){//internal can be called within contract and derived contract
        return "internal one func called";
    }

    function externalOneFunc() external   pure returns (string memory){//external can be called from outside contract
        return "external one func called";
    }

    function privateOneFunc() private  pure returns (string memory){
        return publicOneFunc();
    }
}

contract Two is One {
    function publicTwoFunc() public pure returns (string memory){
        return publicOneFunc();
    }

    function publicTwoFunc1() public pure returns (string memory){
        return internalOneFunc();
    }
}