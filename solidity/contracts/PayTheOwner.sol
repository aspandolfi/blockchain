// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PayTheOwner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function payTheOwner() public payable {
        require(msg.value == 1 wei, "Must send 1 wei");
        payable(owner).transfer(1 wei);
    }
}