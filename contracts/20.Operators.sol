// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Operators {
    function sum(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 + value2;
    }

    function sub(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 - value2;
    }

    function multiply(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 * value2;
    }

    function divide(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 / value2;
    }

    function exp(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 ** value2;
    }

    function modulus(
        uint256 value1,
        uint256 value2
    ) external pure returns (uint256) {
        return value1 % value2;
    }

    function increament(uint256 value1) external pure returns (uint256) {
        value1++;
        return value1;
    }

    function decreament(uint256 value1) external pure returns (uint256) {
        value1--;
        return value1;
    }
}
