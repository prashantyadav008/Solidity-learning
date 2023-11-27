// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract GasReduce {
    function withoutUnchecked(
        uint256 x,
        uint256 y
    ) public pure returns (uint256) {
        return x + y;
    }

    function withUnchecked(uint256 x, uint256 y) public pure returns (uint256) {
        unchecked {
            return x + y;
        }
    }
}
