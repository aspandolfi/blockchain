// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PaidCalculator {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier costs(uint amount) {
        require(msg.value == amount, "You must send the exact amount of wei required");
        _;
        owner.transfer(msg.value);
    }

    function add(uint a, uint b) public payable costs(1 wei) returns (uint) {
        return a + b;
    }
    
    function subtract(uint a, uint b) public payable costs(1 wei) returns (uint) {
        return a - b;
    }
    
    function multiply(uint a, uint b) public payable costs(1 wei) returns (uint) {
        return a * b;
    }
    
    function divide(uint a, uint b) public payable costs(1 wei) returns (uint) {
        require(b > 0, "Division by zero is not allowed");
        return a / b;
    }
}