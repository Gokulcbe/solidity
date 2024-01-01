// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract loops{
    uint[] public num;

    function dowhileloop() public {
        uint x = 0;
        do {
            num.push(x*3);
            x++;
        }
        while(x!= 5);
    }

    function whileloop() public {
        uint y = 0;
        while(y!=5){
            num.push(y*2);
            y++;
        }
    }

    function forloop() public {
        for(uint i = 0; i < 5; i++){
            num.push(i*5);
        }
    }
}