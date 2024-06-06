// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract function_and_error {
    uint public x;
    
    function set(uint _x) public {
      require(_x>0, "x must be greater than 0");
      x=_x;
    }

    function  multiply() public{
      assert(x>0);
      x=x*2;
    }

    function resetX() public {
        if (x == 0) {
            revert("x is already 0");
        }
        x = 0;
    }
}
