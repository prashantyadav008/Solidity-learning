// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;
// Uncomment this line to use console.log

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
