// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Global_variables {
    address public contractAddress;
    address public payer;
    address public origin;
    uint256 public amount;

    constructor() {
        contractAddress = address(this);
    }

    function pays() public payable {
        payer = msg.sender;
        origin = tx.origin;
        amount = msg.value;
    }

    function getBlockInfo()
        public
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        return (block.number, block.timestamp, block.chainid);
    }
}
