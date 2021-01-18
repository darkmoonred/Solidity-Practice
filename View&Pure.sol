// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// view functions declare not to modify the state
// pure functions promise not to modify or read the state.
contract ViewAndPure {
    uint256 public x = 1;

    //calling function does not update value of x (view)
    function addToX(uint256 y) public view returns (uint256) {
        return x + y;
    }

    //a function cannot be a view function if it calls another function that is niether view nor pure.
    // Pure functions cannot call other pure functions.
    /*
    function updateX() public view {
        x += 1;
    }
    */

    /*
    function foo() public {}

    function invalidViewFunc() public pure {
        foo();
    }
    */

    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }
}
