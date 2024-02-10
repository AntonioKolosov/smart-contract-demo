// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.22;

contract Types {
    // Enum. Enumerated type.
    enum Status { Paid, Delivered, Recieved } // Possible values for our enum
    Status public  currentStatus;

    // Array
    // Fixed lenth array
    uint[10] public  items; 

    // Nested array
    // Read from right to left
    uint[3][2] public nested_items;

    // Dynamics array
    uint[] public dynamic_items;

    // Byte array
    bytes1 public  myVar; // 1 bite, 8 bit
    // 1 --> 32
    bytes32 public str = "test";
    // Dynamic bytes arr
    bytes public dynamic_str = "test here";

    // Struct datatype
    struct Payment {
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    // Create second struct and declare mapping with Payment struct;
    struct Balance {
        uint totalPayments;
        mapping (uint => Payment) payments;
    }

    // Create maping for struct
    mapping(address => Balance) public balances;

    // When payment will recieve we will get an information
    function pay_public(string memory message) public payable {
        // Increase total payments
        uint paymentNum = balances[msg.sender].totalPayments;
        balances[msg.sender].totalPayments++;
        
        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        balances[msg.sender].payments[paymentNum] = newPayment;
    }

    function getPayment(address _addr, uint _index) public view returns(Payment memory){
        return balances[_addr].payments[_index];
    }

    // Enum usage example
    function pay() public  {
        currentStatus = Status.Paid;
    }

    // Enum usage example
    function delivered() public  {
        currentStatus = Status.Delivered;
    }

    // Array usage example
    function arr() public {
        items[0] = 100; // Add value by index
        items[1] = 200;
        items[2] = 300;
    }

    // Nested array example
    function nested_arr() public {
        nested_items = [
            [3,4,5],
            [6,7,8]
        ];
    }

    function dynamic_arr() public  {
        dynamic_items.push(4); // Push only for dynamic array 
        dynamic_items.push(5);
    }

    // Temporary array, store in memory, not in blockchain
    function sampleMemory() public pure returns (uint[] memory) {
        uint[] memory tempArray = new uint[](10);
        tempArray[0] = 1;
        tempArray[1] = 2;
        return tempArray;
    }

    // Dynamic bytes arr example. U can find lenth only for this type
    function bytes_dynamic() public view  returns (uint) {
        return dynamic_str.length;
    }

    // Return byte by index
    function return_byte() public view  returns (bytes1) {
        return dynamic_str[0];
    }    
}