// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.22;

// Data types for solidity

contract Types {
    // Public variable
    // boolean. State. Will be store in blockchain
    bool public myBool = true; 
    uint public minimum;
    uint public maximum;
    uint public myVal = 254;


        // Return True if both are True (and)
        // localBool && _inputBool
         // Return True if one is True (or)
        // localBool || _inputBool
         // Quality
        // localBool == _inputBool
        // inequality
        // localBool != _inputBool
        // (not)
        // !localBool

    // unsigned integers
    uint256 public myUint = 42; // may text just an uint (only 256 bit) 2 ** 256
    uint8 public mySmallUint = 2; // 2 ** 8 ( 0 --> 255)
    // from uint8 to uint 256

    // signed integers
    int public  myInt = -48; // info about sign storing in 1 bit
    int8 public mySmallInt = -1; // 2 ** 7 = 128 (-128 --> (128-1)

    function operations() public pure {
        uint localUint = 42;
        localUint + 1;
        localUint - 1;
        localUint * 2;
        localUint / 2;
        localUint ** 3;
        localUint % 3;

        localUint == 1;
        localUint != 1;
        localUint > 1;
        localUint >= 1;
        localUint < 2;
        localUint <= 2;
    }

    function minMax() public {
        minimum = type(uint8).max; // minimal avaible value
        maximum = type(uint8).min; // maximum avaible value
    }

    function inc() public {
        // myVal = myVal + 1;
        // myVal += 1;
        // If we get the highest 'border'. Return to start of diapasone
        unchecked {
            myVal++;
        }
    }
}