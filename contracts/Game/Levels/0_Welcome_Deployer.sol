pragma solidity 0.6.2;

import './0_Welcome.sol';

contract WelcomeDeployer {

  function newInstance () public returns (address) {
    Welcome instance = new Welcome();
    return address(instance);
  }

  function check (address _instance, address _player) public returns (bool) {
    Welcome instance = Welcome(_instance);
    return instance.owner() == _player;
  }

}
