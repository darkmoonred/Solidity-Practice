// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Dividend {
    address[100] public shareholders; // address array has limit (ex. 100 so contract doesn't run out of gas)

    function pay() public {
        for (uint256 i = 0; i < shareholders.length; i++) {
            //send eth to each shareholder
        }
    }
}
