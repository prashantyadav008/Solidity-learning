// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Mapping {
    // use mapping in this ways
    mapping(uint256 => string) internal names;
    mapping(uint256 => address) internal addresses;
    mapping(address => uint256) internal values;
    mapping(address => string) internal names1;
    mapping(address => address) internal addresses1;
    mapping(address => bool) internal bools;
    mapping(address => mapping(uint256 => bool)) internal bools1;

    mapping(uint256 => string) public myMapping;
    uint256 public indexing;

    function setValues(string memory _name) public {
        indexing++;
        myMapping[indexing] = _name;
    }

    function deleteValues(uint256 _indexing) public {
        delete myMapping[_indexing];
    }
}

struct School {
    uint schoolId;
    string name;
}

contract structureMapping {
    mapping(uint => School) public schools;
    uint public structIndex;

    event myEvent(uint schoolId, string name);

    function insertValues(uint _schoolId, string memory _name) public {
        School storage newValue = schools[structIndex];
        newValue.schoolId = _schoolId;
        newValue.name = _name;
        structIndex++;

        emit myEvent(_schoolId, _name);
    }

    function updateValues(
        uint updateIndex,
        uint _schoolId,
        string memory _name
    ) public {
        School storage newValue = schools[updateIndex];
        newValue.schoolId = _schoolId;
        newValue.name = _name;
    }

    function deleteValue(uint indexValue) public {
        for (uint i = indexValue; i < structIndex; i++) {
            schools[i].schoolId = schools[i + 1].schoolId;
            schools[i].name = schools[i + 1].name;
        }
        structIndex--;
    }
}
