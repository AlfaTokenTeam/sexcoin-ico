pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Sexcoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Sexcoin(address _owner)  UpgradeableToken(_owner) {
    name = "Sexcoin";
    symbol = "Sxx";
    totalSupply = 5000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}