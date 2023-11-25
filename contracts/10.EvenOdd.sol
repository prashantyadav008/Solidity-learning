// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 < 0.9.0;

/*
 * @title EvenOdd Contract
 * @dev Sepereate Array Number int Even number and Odd number
 */

contract EvenOdd {
    uint[] public myArray = [1,2,3,4,5,6,7,8,9,0];    
    uint[] public evenNumber;    
    uint[] public oddNumber; 
    uint evenLength;
    uint public oddLength;   


    function seperateValues() public {
        for(uint i=0; i<myArray.length; i++){
            if(myArray[i] % 2 == 0){
                evenLength++;
                evenNumber.push(myArray[i]);
            }else{
                oddLength++;   
                oddNumber.push(myArray[i]);
            }
        }
    }

    function evenValues() public view returns(uint[] memory) {
        return evenNumber;
    }

    function oddValues() public view returns(uint[] memory) {
        return oddNumber;
    }


}