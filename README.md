# Demonstrating The use of Require(),Revert(),Assert() in Error Handling in Solidty 


## Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The contract

   This is an example of a "Assessment" contract in Solidity. 
   "Assessment.sol" in `contracts` contains the following code:

   ```solidity
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
   ```

3. Prepare the migration

   var HelloWorld = artifacts.require("HelloWorld");
var Assessment = artifacts.require("Assessment")
module.exports = function(deployer) {
  deployer.deploy(HelloWorld);
  deployer.deploy(Assessment);
}
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await Assessment.deployed()
   instance._revert() //In this way you can call the function
   ```

## Authors

Aashish


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

