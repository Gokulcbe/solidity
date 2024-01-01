// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

library ArrayLib{
    function reverse(uint[] storage _arr) external view returns (uint[] memory){
        uint[] memory reverseArray = new uint[](_arr.length);
        uint count = 1;

        for(uint i = 0; i < _arr.length; i++){
            reverseArray[_arr.length-count] = _arr[i];
            count++;
        }
        return reverseArray;
    }

    function insertArr(uint[] storage _arr, uint _num) public {
        _arr.push(_num);
    }
}

contract exp{
    uint[] public arr = [1,2,3,4];

    function getReverse() public view returns (uint[] memory){
        return ArrayLib.reverse(arr);
    }
    
    function insert(uint _num) public {
        return ArrayLib.insertArr(arr,_num);
    }

    function getLibAddr() public pure returns (address){
        return address(ArrayLib);
    }
}