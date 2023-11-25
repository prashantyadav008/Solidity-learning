// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Modifier {
    string public name = "Prashant Yadav";
    uint256 public balance;

    function getName() public view returns (string memory) {
        return name;
    }

    function addValues(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function pay() public payable {
        balance = msg.value;
    }
}
