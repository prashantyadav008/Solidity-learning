// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Ethers {
    // uint256 public value1 = 1 wei; //1 ether == 1000000000000000000 wei
    // uint256 public value2 = 1 gwei; //1 ether == 1000000000 gwei
    // uint256 public value3 = 1 ether; //1 ether == 1 ether

    uint256 public reciveCount;
    uint256 public count;

    uint256 public withoutRecive;
    uint256 public withoutFallBack;

    //direct get ether
    receive() external payable {
        reciveCount++;
        withoutRecive++;
    }

    fallback() external payable {
        count++;
        withoutFallBack++;
    }

    function checkBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function transfer(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed!");
    }

    function directCall(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function withdrawMoney(address to) public {
        payable(msg.sender).transfer(to.balance);
    }
}

// Uncomment this line to use console.log
contract SendTip {
    address payable public owner;
    uint public percentage;

    constructor() {
        owner = payable(msg.sender);
        percentage = 10;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner can do this action!");
        _;
    }

    function changeOwner(address payable _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function changePercentage(uint _newPercentage) public onlyOwner {
        percentage = _newPercentage;
    }

    function sendTip(address payable newAddress) external payable {
        uint getPercentageAmount = (msg.value * percentage) / 100;
        owner.transfer(getPercentageAmount);
        newAddress.transfer(address(this).balance);
    }

    function checkBalance() public view returns (uint) {
        return address(owner).balance;
    }
}
