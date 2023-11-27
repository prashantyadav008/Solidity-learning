// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Mapping {
    // use simple mapping in this ways
    mapping(uint256 => string) public simpleMapping;

    // use nested mapping in this ways
    mapping(uint256 => mapping(address => string)) public nestedMapping;

    uint256 public indexing;

    function setValues(string memory _name) public {
        indexing++;
        simpleMapping[indexing] = _name;
        nestedMapping[indexing][msg.sender] = _name;
    }

    function deleteValues(uint256 _indexing) public {
        delete simpleMapping[_indexing];
        delete nestedMapping[_indexing][msg.sender];
    }
}
