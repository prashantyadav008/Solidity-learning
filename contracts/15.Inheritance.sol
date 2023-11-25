// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Admin can do this Action!");
        _;
    }
}

contract Inheritance is Ownable {
    function add(uint256 a, uint256 b) public view onlyOwner returns (uint256) {
        return a + b;
    }

    function ownerAddress() public view returns (address) {
        return owner;
    }
}
