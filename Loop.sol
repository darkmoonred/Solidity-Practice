// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Loop {
    uint256 public count;

    function loop(uint256 n) public {
        for (uint256 i = 0; i < n; i++) {
            count += 1;
        }
    }
}
