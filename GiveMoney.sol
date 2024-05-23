// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GiveMoney {
  uint256 balance = 0;

  function force(address payable _to) public payable {
    selfdestruct(_to);
  }

  function deposit() public payable {
    balance = msg.value;
  }
}