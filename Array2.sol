// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Array {}

contract CompactArray {
    uint256[] public myArray;

    function remove(uint256 index) public {
        myArray[index] = myArray[myArray.length - 1];
        myArray.pop();
    }

    function test() public {
        myArray.push(1);
        myArray.push(2);
        myArray.push(3);
        myArray.push(4);

        remove(1);

        assert(myArray.length == 3);
        assert(myArray[0] == 1);
        assert(myArray[1] == 4);
        assert(myArray[2] == 3);

        remove(2);

        // [1, 4]
        assert(myArray.length == 2);
        assert(myArray[0] == 1);
        assert(myArray[1] == 4);
    }
}
