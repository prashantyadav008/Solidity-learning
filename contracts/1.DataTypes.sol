// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract DataTypes {
    int256 integer = 10;

    // by default uint value is 0 because it range start from 0 to 2^256
    uint256 unsignedInteger = 100;

    // address data type can store wallet adressess and contract addressess
    address walletAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // by default string value is empty like: ""
    string name = "My name is Prashant Yadav";

    // by default bool value is false
    bool status = true;

    // only takes 32 characters in bytes 32
    bytes32 arr3 = "abcdefghijklmnopqrstuvwxyz123456";
}
