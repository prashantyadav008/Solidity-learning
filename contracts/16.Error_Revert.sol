// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/*
 * @title ErrorRevert Contract
 * @dev convert custom error with parameters
 */
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
