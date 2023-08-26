// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public Name;
    string public Symbol;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;

    address public owner;

    modifier OwnerAccessOnly() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    constructor() {
        Name = "Khushi";
        Symbol = "K";
        totalSupply = 0;
        owner = msg.sender;
    }
    
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    function TransferToken(address recipient,uint256 amount) external {
        require(amount <= balances[msg.sender], "Insufficient balance.");

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        totalSupply -= amount;
    }

    function mintToken(address to, uint256 amount) external OwnerAccessOnly {
        totalSupply += amount;
        balances[to] += amount;
    }

    function burnToken(uint256 amount) external {
        require(amount <= balances[msg.sender], "Insufficient balance!");

        balances[msg.sender] -= amount;
        totalSupply -= amount;

    }
}
