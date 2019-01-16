pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract UGHToken is ERC20,ERC20Detailed, Ownable {
    
    uint256 public constant INITIAL_SUPPLY = 40000000;
    string public _name = "UGH Token";
    string public _symbol = "UGH";
    uint public _decimals = 18;
    address _manager;
    constructor (address _managerAddress) ERC20Detailed(_name,_symbol, 18) public{
        _mint(msg.sender, INITIAL_SUPPLY);
        _manager = _managerAddress;
        transferToManager();
    }
    
    // function to transfer funds to manager account
    function transferToManager() public {
        require(_manager != address(0));
        transfer(_manager,INITIAL_SUPPLY);
    }
     function () payable external { }
    
}