// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log

contract SecretVault {
    string private secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function set(string memory _secret) public {
        secret = _secret;
    }

    function get() external view returns (string memory) {
        return secret;
    }
}

// SecretVault contract functions using SecretVault address
contract Calling_Other_Contract {
    SecretVault public secretVault;

    constructor(SecretVault _secretValue) {
        secretVault = _secretValue;
    }

    function setSecret(string memory _secret) public {
        secretVault.set(_secret);
    }

    function getsecret() external view returns (string memory) {
        return secretVault.get();
    }
}
