// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Array {
    uint256[] public myArray;
    uint256[] public myArray2 = [1, 2, 3];
    uint256[10] public fixedSizeArray; //array fixed size of 10

    //pushes element in array onto the top of the stack
    function push(uint256 i) public {
        myArray.push(i);
    }

    //removes last element
    //on empty array will call error
    function pop() public {
        myArray.pop();
    }

    //gets length of array
    function getLength() public {
        myArray.length;
    }

    //delete element from array
    function remove(uint256 index) public {
        delete myArray[index];
    }
}
