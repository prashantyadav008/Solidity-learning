// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
contract Visiblity {
    string name1 = "Name1";
    string public name2 = "Name2";
    string private name3 = "Name3";
    string internal name4 = "Name4";

    uint256 public count;

    function increament1() public {
        count++;
    }

    function increament2() public {
        increament1();
    }

    function increament3() private {
        count++;
    }

    function increament4() public {
        increament3();
    }

    function increament5() internal {
        count++;
    }

    function increament6() public {
        increament5();
    }

    function increament7() external {
        count++;
    }
}

