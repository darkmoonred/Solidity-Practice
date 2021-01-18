// SPDX-License-Identifier: GPL-3.0
//middleman smart contract to swap tokens
pragma solidity >=0.7.0 <0.9.0;

//deploy locally to testnet and interact via etherscan.
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenSwap {
    IERC20 public token1;
    address public owner1;
    IERC20 public token2;
    address public owner2;

    constructor(
        address _token1,
        address _owner1,
        address _token2,
        address _owner2
    ) public {
        token1 = IERC20(_token1);
        owner1 = _owner1;
        token2 = IERC20(_token2);
        owner2 = _owner2;
    }

    function swap(uint256 _amount1, uint256 _amount2) public {
        require(msg.sender == owner1 || msg.sender == owner2, "Not authorized");
        require(
            token1.allowance(owner1, address(this)) >= _amount1,
            "Token 1 allowance too low"
        );
        require(
            token2.allowance(owner2, address(this)) >= _amount2,
            "Token 2 allowance too low"
        );
    }
}


function _safeTranserFrom(
    IERC20 token,
    address sender,
    address recipient,
    uint amount
) private {
    bool sent = token.transferFrom(sender, recipient, amount);
    require(sent, "Token transfer failed");
}
)
