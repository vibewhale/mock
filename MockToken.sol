// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockToken is ERC20, Ownable {
    constructor() ERC20("MOCK", "MOCK") Ownable(msg.sender) {
        // Mint 28 million tokens to the deployer
        _mint(msg.sender, 28000000 * 10 ** decimals());
    }
}
