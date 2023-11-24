// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Structure {
    struct Book {
        string title;
        string author;
        bool complete;
    }

    Book[] public books;

    function set(string memory _title, string memory _author) public {
        books.push(Book(_title, _author, false));
    }

    function completed(uint _index) public {
        books[_index].complete =  true;
    }
}
