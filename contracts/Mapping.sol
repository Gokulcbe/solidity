// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract Mapping {
    mapping (uint=> string) public person; //key, value, variable

    function addperson() public {
        person[1] = "Gokul"; // person[1] - key
    }

    struct Employee {
        string empname;
        uint age;
    }

    mapping (uint => Employee) public  employees;

    function addEmployee() public {
        employees[1] = Employee("Goku", 22);
    }
}