// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BasicCrypto {

    struct Transaction {
        address sender;
        address receiver;
        uint amount;
    }

    Transaction[] public transactions;

    function sendMoney(address payable receiver) public payable {
        require(receiver != address(0), "Invalid address");
        require(msg.value > 0, "Amount must be greater than 0");

        receiver.transfer(msg.value);

        transactions.push(
            Transaction(msg.sender, receiver, msg.value)
        );
    }

    function getTransaction(uint index)
        public
        view
        returns (address, address, uint)
    {
        Transaction memory t = transactions[index];

        return (t.sender, t.receiver, t.amount);
    }

    function getTotalTransactions() public view returns (uint) {
        return transactions.length;
    }
}
