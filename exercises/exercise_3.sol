// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Exercise {
    // Create dynamic nested arr of uints
    uint[][] public arr;

    // Add new line to Matrix
    function addLine(uint[] memory lineArr) public {
        arr.push(lineArr);
    }

    // Set new Element to the specific index
    function setElement(uint rowIndex, uint columnIndex, uint newValue) public  {
        // Check the validity of new data
        require(rowIndex < arr.length, "Row index is out of bounds.");
        // Check the validity of new data
        require(columnIndex < arr[rowIndex].length, "Column index is out of bounds.");
        arr[rowIndex][columnIndex] = newValue;
    }   

    // Get matrix
    function getMatrix() public view returns (uint[][] memory) {
        return arr;
    }
}