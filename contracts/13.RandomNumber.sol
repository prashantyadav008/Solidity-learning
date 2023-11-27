// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract RandoNumber {
    function random(uint randomNumber) public view returns (uint) {
        return
            uint(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        randomNumber
                    )
                )
            );
    }
}
