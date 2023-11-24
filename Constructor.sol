// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Constructor {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}
