pragma solidity 0.6.2;

import './Level_5.sol';

contract TestERC20Deployer {

  function newInstance () public returns (address) {
    TestERC20 instance = new TestERC20();
    return address(instance);
  }

  function check (address _instance, address _player) public returns (bool) {
    TestERC20 instance = TestERC20(_instance);
    return instance.completed() == true;
  }
}
