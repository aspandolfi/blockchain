// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CreatorAddress {
    address public creator;

    constructor() {
        creator = msg.sender;
    }

    function getCreator() public view returns (address) {
        return creator;
    }
}