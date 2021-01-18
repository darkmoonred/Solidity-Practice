// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
contract A {
    function getContractName() public pure virtual returns (string memory) {
        return "Contract A";
    }
}
*/

contract A {
    string public name;

    constructor(string memory _name) public {
        name = _name;
    }
}

/*
contract B is A {
    function getContractName()
        public
        pure
        virtual
        override
        returns (string memory)
    {
        return "Contract B";
    }
}
*/

contract B is A {
    constructor(string memory _name) public A(_name) {}
}
