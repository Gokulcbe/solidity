// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./VisibilityMod.sol";

contract Three {
    One contractaddress = One(0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d); //contract address from VisibilityMod.sol One func to access external
    function callExternal() public view returns(string memory){
        return contractaddress.externalOneFunc();
    }
}