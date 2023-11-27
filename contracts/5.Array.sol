// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Array {
    //basic array value in uint
    uint256[] public array1 = [5, 6, 7, 8, 9];
    uint256[] public array2;
    uint256[5] public array3;

    //basic array value in string
    string[] public array4 = ["a", "b", "c", "d", "e"];
    string[] public array5;
    string[5] public array6;

    uint256[] public myArray;

    function get() public view returns (uint256[] memory) {
        return myArray;
    }

    function length() public view returns (uint256) {
        return myArray.length;
    }

    function push(uint256 value) public {
        myArray.push(value);
    }

    function pop() public {
        myArray.pop();
    }

    function removeValue(uint256 indexing) public {
        delete myArray[indexing];
    }
}
