// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Custom_Modifier {
    address private owner;
    string public name = "";

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Admin can do this action!");
        _;
    }

    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
}
