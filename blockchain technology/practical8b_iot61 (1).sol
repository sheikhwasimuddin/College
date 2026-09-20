// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract practical8b_iot61 {

    mapping(uint => string) public students;

    // 2. Registration mapping
    mapping(address => bool) public isRegistered;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Owner-only modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "Access Denied: Not Owner");
        _;
    }

    // 2. Registered-user modifier
    modifier onlyRegistered() {
        require(isRegistered[msg.sender], "User not registered");
        _;
    }

    function addstudent(uint _id, string memory _name) public onlyOwner {
        students[_id] = _name;
    }

    function getstudent(uint _id) public view returns (string memory) {
        return students[_id];
    }

    // 1. Update student - only owner can update
    function updateStudent(uint _id, string memory _name) public onlyOwner {
        students[_id] = _name;
    }

    // 2. Register a user - only owner can register
    function registerUser(address _user) public onlyOwner {
        isRegistered[_user] = true;
    }

    function registeredFunction() public view onlyRegistered returns (string memory) {
        return "You are a registered user";
    }

    // 3. Transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid new owner");
        owner = newOwner;
    }
}
