// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//used for fast lookups
contract Mapping {
    mapping(address => uint256) public myMap;

    //get address (will always have a value, 0 if not set)
    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    //set address / addresses
    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    //delete addresses
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
