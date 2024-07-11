// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Assessment{
    uint public balance = 10;

    function _require(uint a ) pure public {
        require(a<=10,"inSufficient Balance");
    }
    function _revert(uint a ) pure public{
        if(a >= 10){
            revert("Input is greater than or equal to 10");
        }else{
            revert("Input is less than 10");
        }
    }
    function _Assert() public view {

        assert(balance >= 0);
        
    }
}