var MyToken = artifacts.require("./UGHToken.sol");

module.exports = function (deployer) {
    deployer.deploy(MyToken);
};