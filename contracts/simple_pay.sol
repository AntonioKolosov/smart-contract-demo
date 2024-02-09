// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.22;

contract MyShop {
    // Contract owner address
    // Public means that we can read this variable
    address public owner;

    // Output: 0xd9145CCE52D386f254917e481eB44e9943F39138

    // Storage of sender data
    mapping (address => uint) public payments;

    // Constructor will call only one time. Calls automatically
    constructor() {
        // Return address to sender. Store in blockchain
        owner = msg.sender;
    }

    // Function will automaticaly accept payment from sender
    function payForItem() public payable {
        payments[msg.sender] = msg.value;
    }
    
    // Widthraw all money
    function withdrawAll() public {
        // Temporary  variable to payble type. Owner from constructor.
        address payable _to = payable(owner);
        // Call current contract
        address _thisContract = address(this);
        // Use transfer method for thransfering money. Show balance.
        _to.transfer(_thisContract.balance);
    }
}