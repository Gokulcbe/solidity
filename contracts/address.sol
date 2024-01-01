// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Address{
    address public owner;
    address payable public receiver = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function getBal() public returns(uint, uint) {
        // receiver.transfer(10); //transfer 10 eth to the receiver address from our contract
        // receiver.send(10); //send will return true or false
        
        require(receiver > owner, "Receiver is smaller than owner");
        owner = msg.sender;
        return (owner.balance, receiver.balance); 
    }


}