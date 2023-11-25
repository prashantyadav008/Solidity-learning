// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Events {
    string public message;

    event Messages(address indexed _user, string message);

    function UpdateMessage(string memory _message) public {
        message = _message;
        emit Messages(msg.sender, _message);
    }
}
