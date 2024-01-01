// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//storage
//memory (modifyable)
//calldata (Non-modifyable & cheaper) used with external

contract Storage {
    string acc = "Gokul"; // anything outside of function stored on blockchain (storage)

    function displayAcc(string memory _accountname) public pure returns(string memory){
        return _accountname;
    }

    function result(string calldata _a) external pure returns (string calldata){
        return _a;
    }

    function accessExternal() public  view returns(string memory){
        return this.result(acc);
    }

}
