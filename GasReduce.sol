// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract GasReduce{
    uint public value1;
    uint  public value2;

    function set(uint val1, uint val2) public {
        value1 = val1;
        value2 = val2;
    }

    function getValue1() public view returns(uint){
        return value1;
    }

    function getValue2() public view returns(uint){
        return value2;
    }
}

contract gasFee {
    function withoutUnchecked(uint256 x, uint256 y) public pure returns (uint256) {
            return x + y;
    }

    function unchecked(uint256 x, uint256 y) public pure returns (uint256) {
        unchecked {
            return x + y;
        }
    }
}
