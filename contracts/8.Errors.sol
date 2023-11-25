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

/*
 * @title ErrorRevert Contract
 * @dev convert custom error with parameters
 */

// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract ErrorRevert {
    address public admin;
    mapping(address => uint) public balance;

    constructor() {
        admin = msg.sender;
    }

    error InsufficentAmount(uint request, uint available);

    function mint(address to, uint amount) public {
        require(msg.sender == admin);
        balance[to] += amount;
    }

    function transferFrom(address to, uint amount) public {
        if (amount > balance[msg.sender])
            revert InsufficentAmount({
                request: amount,
                available: balance[msg.sender]
            });

        balance[to] += amount;
        balance[msg.sender] -= amount;
    }
}
