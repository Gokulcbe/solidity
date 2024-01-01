// SPDX-License-Identifier: MIT
pragma solidity ^0.4.26;

contract Functions{
    function add(int _a, int _b)public pure returns(int) { //do not want to use any state variable inside function
        return _a+_b;
    }

    uint pincode = 641035;
    function pinc() public view returns(uint){ //view means read only state variable inside function
        return pincode;
    }
}