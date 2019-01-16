const MyToken = artifacts.require("./UGHToken");
const BigNumber = web3.BigNumber;
contract('MyToken', accounts => {
    const _name = "UGH Token";
    const _symbol = "UGH";
    const _decimals = 18;
    const _totalSupply = 40000000;
    var tokenInstance;

    beforeEach(async function () {
        this.token = await MyToken.new('0x51815bEfde28cF1248A5d7399B8130169d22596d');
    })
    it('initializes the contract with the correct values', function () {
        return MyToken.deployed().then(function (instance) {
            tokenInstance = instance;
            return tokenInstance.name();
        }).then(function (name) {
            assert.equal(name, _name, 'has the correct name');
            return tokenInstance.symbol();
        }).then(function (symbol) {
            assert.equal(symbol, _symbol, 'has the correct symbol');
            return tokenInstance.decimals();
        }).then(function (decimal) {
            assert.equal(decimal.toNumber(), _decimals, 'it has correct decimals');
            return tokenInstance.totalSupply();
        }).then(function (totalSupply) {
            assert.equal(totalSupply.toNumber(), _totalSupply, 'it has correct decimals');
            // return tokenInstance.transfer(fromAccount, 100, { from: accounts[0] });
        });
    })
})