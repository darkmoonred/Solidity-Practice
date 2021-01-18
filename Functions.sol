// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Function {
    function multiDimFixedSizeArrayInput(uint256[9][9] memory _arr) public {}

    uint256 MAX_ARR_LENGTH = 10;

    function arrayInput(uint256[] memory _arr) public {}

    mapping(uint256 => uint256) map;
    uint256[] arr;
    uint256[9][9] arr2DFixed;
    uint256[][] arr2D;

    function multiDimFixedSizeArrayOutput()
        public
        view
        returns (uint256[9][9] memory)
    {
        return arr2DFixed;
    }

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}
