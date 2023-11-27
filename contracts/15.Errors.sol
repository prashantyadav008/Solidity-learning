// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// covered only require condition and revert condition

// Uncomment this line to use console.log
contract Errors {
    event Log(string status);

    function example1(uint256 _value) public {
        require(_value > 10, "Value is Small");
        emit Log("success");
    }

    function example2(uint256 _value) public {
        if (_value <= 10) {
            revert("error");
        }

        emit Log("success");
    }
}
