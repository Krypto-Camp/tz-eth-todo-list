// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

import "./Console.sol";

contract HelloWorld is Console {
  string public test1111;

  function SimpleAuction(string memory greet) public {
    log("time now", block.timestamp);
    log(greet, block.timestamp);
  }
}
