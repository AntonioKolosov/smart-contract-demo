// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Exercise {
    // Set the enum 
    enum Status {ToDo, InProgress, Done}
    Status private  status;

    mapping (Status => uint) private  statusValue;

    // Initialize the start conditions for the contract
    constructor() {
        status = Status.ToDo;
        statusValue[Status.ToDo] = 1;
    }

    // Set new status from enum
    function setStatus(Status _status) public {
        status = _status;
        statusValue[_status]++;
    }

    // Get current status
    function getStatus() public view returns(Status) {
        return status;
    }

    // Get current status value
    function getStatusCount(Status _status) public view returns (uint) {
        return statusValue[_status];
    }

}