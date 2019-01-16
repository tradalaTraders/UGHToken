pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract UGHToken is ERC20, ERC20Detailed, Ownable {
    uint8 public constant DECIMALS = 18;
    uint128 public INITIAL_SUPPLY =  4000000*10**18 ;

    mapping (address => uint256) private _balances;

    address _manager;
    constructor (address _managerAddress) ERC20Detailed("UGH Token","UGH", DECIMALS) public{
        require(_managerAddress!=address(0));
        _mint(msg.sen,INITIAL_SUPPLY);
        _balances[_managerAddress] = INITIAL_SUPPLY; 
    }
     function () payable external { 
         revert();
     }
    
}