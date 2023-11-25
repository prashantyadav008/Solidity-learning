// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Bytes {
    bytes1 public arr1 = "a";
    bytes2 public arr2 = "ab";
    // only takes 32 characters in bytes 32
    bytes32 public arr3 = "abcdefghijklmnopqrstuvwxyz123456";
}
