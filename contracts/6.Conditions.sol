// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Conditions {
    function evenOrOdd(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }

    function evenOddSeperate(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "Even";
        }

        return "Odd";
    }

    function evenOddReturn(uint x) public pure returns (string memory) {
        return (x % 2 == 0) ? "Even" : "Odd";
    }
}
