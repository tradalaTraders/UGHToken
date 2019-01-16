pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract UGHToken is ERC20, ERC20Detailed, Ownable {
    uint public constant INITIAL_SUPPLY =  40000000;
    uint8 public constant DECIMALS = 18;
    mapping (address => uint256) private _balances;

    address _manager;
    constructor (address _managerAddress) ERC20Detailed("UGH Token","UGH", DECIMALS) public{
        _mint(msg.sender, INITIAL_SUPPLY);
        require(_managerAddress!=address(0));
        _balances[_managerAddress] = INITIAL_SUPPLY * 18; 
        // emit Transfer(0x0, _managerAddress, INITIAL_SUPPLY);
    }
     function () payable external { 
         revert();
     }
    
}