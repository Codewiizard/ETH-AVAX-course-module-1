var HelloWorld = artifacts.require("HelloWorld");
var Assessment = artifacts.require("Assessment")
module.exports = function(deployer) {
  deployer.deploy(HelloWorld);
  deployer.deploy(Assessment);
}
