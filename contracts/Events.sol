// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Events{
    address sender;
    string name;

    event userDetails(address _sender, string _name); //logs the event to access later
    // event userDetails1(address indexed _sender, string indexed _name); //maximum can be 3 indexed inside event
    function emitEvent(address _sender, string memory _name) public {
        emit userDetails(_sender, _name);
    }
}