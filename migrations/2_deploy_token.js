var MyToken = artifacts.require("./UGHToken.sol");

module.exports = function (deployer) {
    deployer.deploy(MyToken,'0x51815bEfde28cF1248A5d7399B8130169d22596d');
};