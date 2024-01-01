// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

//declare custom datatype by using struct
contract structs{
    struct Employee{
        string Name;
        uint empId;
        uint age;
        uint[] deptid;
    }

    Employee public variable; //Employee is datatype, variable is variable

    Employee[] employees; //array of Employee datatype

    function addEmployee() public {
        variable.Name = "Gokul";
        variable.empId = 14;
        variable.age = 22;
        variable.deptid.push(123);
    }
}