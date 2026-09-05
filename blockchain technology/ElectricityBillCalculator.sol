// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ElectricityBillCalculator {

    string public customerName = "Sheikh Wasimuddin";
    uint public customerId = 101;
    uint public unitsConsumed = 300;
    uint public totalBill;

    constructor() {
        calculateBill();
    }

    function calculateBill() private {
        if (unitsConsumed <= 100) {
            totalBill = unitsConsumed * 5;
        }
        else if (unitsConsumed <= 200) {
            totalBill = unitsConsumed * 7;
        }
        else {
            totalBill = unitsConsumed * 10;
        }
    }

    function getBill() public view returns (uint) {
        return totalBill;
    }
}
