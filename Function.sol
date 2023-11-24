// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Function {
    string name = "Prashant Yadav";

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function defaultName() public {
        name = "Prashant Yadav";
    }
}
