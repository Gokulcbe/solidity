// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract SendEther {
    //not recommended
    // function TransferEth() public payable {
    //     payable(0x838F9b8228a5C95a7c431bcDAb58E289f5D2A4DC).transfer(1 ether); // sending ether from this smart contract to Fallback smart contract.
    // }

    // function sendEth() public payable {
    //     bool status = payable(0x838F9b8228a5C95a7c431bcDAb58E289f5D2A4DC).send(1 ether); // sending ether from this smart contract to Fallback smart contract.
    // }

    function sendEthCall() public payable {
        (bool success,) = payable(0xb5465ED8EcD4F79dD4BE10A7C8e7a50664e5eeEB).call{gas: 10000, value: 1 ether}("Calling via Call function"); // sending ether from this smart contract to Fallback smart contract. "Calling via.." is a data. if gas is greater than gas limit it will fail
        require(success, "Tranfer Failed");
    }

    function getbal() public view returns (uint){
        return address(this).balance;
    }
}