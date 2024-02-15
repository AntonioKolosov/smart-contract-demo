// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Functions {
    // Area of ​​visibility:

    // public (for all area of visibility)
    // external (not avaible into the contract)
    // internal (for inherited contracts)
    // private (only for current contract

    // Modificators:

    // view - only read data in blockchain and don't modify them.
    // pure - cannot read state variables.

    string message = "hello";
    uint public balanceMoney;

    // Если нет функции, которая дальше "распределит" средства, сработает recieve()
    receive() external payable { 

    }

    // Если в вызове упоминается несуществующая функция, сработает fallback()
    fallback() external payable { 

    }

    // change data calls with transaction
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getBalance() public view returns(uint balance) {
        balance = address(this).balance;
    }

    function getMessage() external view returns (string memory ) {
        return message;
    }

    function countTokens(uint value) public pure returns(uint) {
        return value * 3;
    }

    function pay() external payable  {
        balanceMoney += msg.value;
    }
}
