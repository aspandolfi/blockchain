// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HashGenerator {

    function generateHash(string memory text) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(text));
    }
}