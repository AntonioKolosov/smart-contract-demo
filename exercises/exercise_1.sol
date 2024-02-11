// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Exercises {
    bytes32 private name = "Anton";
    uint8 private age = 23;
    bool private isActive = true;

    // Set information about user
    function setUser(bytes32 _name, uint8 _age, bool _isActive) public {
        name = _name;
        age = _age;
        isActive = _isActive;
    }

    // Get user's name
    function getName() public view returns (bytes32) {
        return name;
    }

    // Get users's age
    function getAge() public view returns (uint8) {
        return age;
    }

    // Get users's status
    function getStatus() public view returns (bool) {
        return isActive;
    }
}
