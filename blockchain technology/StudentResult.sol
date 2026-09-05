// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentResult {

    string public name = "Sheikh Wasimuddin";
    uint public id = 61;

    uint public marks1 = 75;
    uint public marks2 = 68;
    uint public marks3 = 82;

    function total() public view returns (uint) {
        return marks1 + marks2 + marks3;
    }

    function average() public view returns (uint) {
        return total() / 3;
    }

    function result() public view returns (string memory) {
        if (average() >= 40) {
            return "PASS";
        } else {
            return "FAIL";
        }
    }
}