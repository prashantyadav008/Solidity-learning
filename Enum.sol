// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EnumInStruct {
    enum Status {
        Active,
        Inactive,
        Pending
    }

    struct Item {
        uint256 id;
        string name;
        Status status; // Using the enum here
    }

    Status public viewStatus;

    mapping(uint256 => Item) public items;

    function addItem(uint256 _id, string memory _name, Status _status) public {
        items[_id] = Item(_id, _name, _status);
    }

    function getItemStatus(uint256 _id) public view returns (Status) {
        return items[_id].status;
    }
}

contract EnumConst{
    enum Status {
        Active,
        Inactive,
        Pending
    }

    struct Person {
        uint256 id;
        string name;
        uint256 status; // Storing status as uint
    }

    mapping(uint256 => Person) public people;

    constructor() {
        // Initialize the contract with some example data
        people[1] = Person(1, "Alice", uint256(Status.Active));
        people[2] = Person(2, "Bob", uint256(Status.Inactive));
        people[3] = Person(3, "Charlie", uint256(Status.Pending));
    }

    function getStatus(uint256 _id) public view returns (Status) {
        // Convert the stored uint back to the corresponding enum value
        return Status(people[_id].status);
    }
}
