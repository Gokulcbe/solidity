// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract byteArray {
    bytes4 public name = "goku";
    bytes32 public name1 = "Gokul cbe djbfdbfjslsklznlsn";

    function accessName() public view returns (bytes32){
        return name1[3];
    }

    //if we dont know bytes length:

    bytes public name3 = "fngkfgknzldknflxnlxnglngljldflslsnlgslnglsdlfsknlgkneslkfels";

    function byteslength() public view returns(uint){
        return name1.length;
    }

    function popArray() public 
    {
        name3.pop();
    }
}