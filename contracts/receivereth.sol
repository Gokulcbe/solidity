// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract ReceiveEth{
    address payable receiver = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    function cellPhone() public payable returns(uint) {//To recive ether use payable
        return address(this).balance;
    }

    function sendEther() public payable {
        receiver.transfer(5 ether);
    }
}