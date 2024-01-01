// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//sending eth from one smart contract to another smart contract

contract Fallback{
    string public calledFunction;
    fallback() external payable {
        calledFunction = "Fallback function Called";
    }
    //fallback func is executed when somebody tries to call the function that doesnt exist in smartcontract.
    //it can receive ether.
    receive() external payable { 
        calledFunction = "Receive Function called";
    }

    //when we send ether along with data fallback function is executed.
    //when we send only ether receive function is executed.

    function getbal() public view returns (uint){
        return address(this).balance;
    }

}