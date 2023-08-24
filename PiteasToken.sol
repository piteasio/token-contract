// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PiteasToken is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    constructor() ERC20("Piteas Token", "PTS") ERC20Permit("Piteas Token") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}
