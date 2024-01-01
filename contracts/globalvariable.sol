// SPDX-License-Identifier: MIT
pragma solidity ^0.4.26;

contract GlobalVar{
    address public  _owner = msg.sender;
    bytes public _msgdata = msg.data;
    uint public _blocknumber = block.number;
    bytes32 public _blockhash = blockhash(3);
    address public _coinbase = block.coinbase;
    uint public _gaslimit = block.gaslimit;
    uint public _blocktime = block.timestamp;
    uint public _gasleft = gasleft();
    address public _transOrigin = tx.origin;

    //visibity modifiers
    //public
    //private
    //internal
    //external

    string public name = "Gokul";
    int private age = 22;
    string internal city = "Cbe"; //within this contract and contracts inheriting it
    
}