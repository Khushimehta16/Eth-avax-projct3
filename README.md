# Eth-avax-projct3

# ERC20 Token Contract

This Solidity smart contract implements a basic ERC20 token with limited functionality, including token transfers, minting by the contract owner, and burning by token holders.

## Description
This contract provides a simple implementation of the ERC20 token standard, allowing users to perform token transfers, the contract owner to mint new tokens, and token holders to burn their tokens. 

## Getting Started

### Prerequisites
To interact with this contract, you need the following:
- A development environment or a tool such as Remix, Hardhat, or Truffle.
- Basic understanding of Solidity and Ethereum smart contracts.

### Deployment
1. Compile and deploy the contract using your preferred development environment.
2. Set the desired name, symbol, and totalSupply values in the constructor.
3. Deploy the contract and interact with it using the provided functions.

## Contract Details
### Functions
- `balanceOf(address account) external view returns (uint256)`: Returns the token balance of a specified address.
- `transfer(address recipient, uint256 amount) external returns (bool)`: Transfers tokens from the sender's account to the recipient's account.It requires sufficient balance.
- `mint(address to, uint256 amount) external onlyOwner`: Mint new tokens and assign them to a specified address. Only the contract owner can call this function.
- `burn(uint256 amount) external`: Burns (destroys) tokens from the caller's account. 

### Modifiers
- `onlyOwner()`: A modifier that restricts certain functions to be callable only by the contract owner.

## Author
This project is authored by Khushi Mehta.

## License
The ERC20 token project is licensed under the MIT License, granting you the flexibility to modify and distribute the code as needed.
