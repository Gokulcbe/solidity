// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Array{
    //two types:
    //fixed
    //dynamic

    uint[10] public num1; //fixed
    uint[] public num2; //dynamic

    uint[] public num3 = [1,2,3];

    //4 operations in array:
    //push - fixed, dyn
    //pop - fixed, dyn
    //length - fixed
    //delete - fixed

    function pushArray(uint _num1) public {
        uint[] memory tempArray = new uint[](4); //inside function only fixed size array can be declared
        num2.push(_num1);
    }

    function popArray() public {
        num2.pop();
    }

    function lenArray() public view returns (uint){
        return num2.length;
    }

    function deleteArray(uint _index) public {
        delete num2[_index];
    }

    struct College {
        string name;
        string id;
        uint cid;
        uint[] deptid;
    }

    College[] colleges; //dynamic array
}