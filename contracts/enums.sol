// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//enums are used to create user definded data type in solidity
contract Enums {
    uint8 public applied = 0;
    uint8 public inprogress = 1;

    enum loanstatus{applied, inprogress, verified, approved}
    loanstatus gokulloanstatus; // variable declaration

    function applyloan() public returns (uint, loanstatus){
         gokulloanstatus = loanstatus.applied;
         return (block.timestamp, gokulloanstatus);
    }

    function progressloan() public {
        gokulloanstatus = loanstatus.inprogress;
    }

    function isinprogress() public view returns(bool){
        require(gokulloanstatus==loanstatus.inprogress);
        return true;
    }

    // function verifiedloan() public {
    //     gokulloanstatus = loanstatus.verified;
    // }
}