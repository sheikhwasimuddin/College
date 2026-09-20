// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract practical8b_iot61 {
    mapping(uint=>string)public students;
    address public owner;
    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Access Denied: Not Owner");
        _;
    }
    function addstudent(uint _id,string memory _name)public onlyOwner {
                students[_id]=_name;
    }

    function getstudent(uint _id)public view returns (string memory){
                return students[_id];
    }

}
