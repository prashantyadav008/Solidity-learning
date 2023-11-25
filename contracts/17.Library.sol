// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

library Math {
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "B value is less than 0");
        uint256 c = a / b;
        return c;
    }

    function sum(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

contract Library {
    function addition(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return Math.sum(value1, value2);
    }
}
