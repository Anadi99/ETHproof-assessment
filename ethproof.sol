// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//0x0000000000000000000000000000000000000000
//000000000000000000000000000000000000000001

contract MyToken {
    // Public variables to store token details
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Function to mint new tokens
    function mint(address _to, uint256 _amount) public {
        // Increase the total supply
        totalSupply += _amount;
        // Increase the balance of the recipient address
        balances[_to] += _amount;
    }

    // Function to burn tokens
    function burn(address _from, uint256 _amount) public {
        // Check if the balance of the sender is sufficient
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        // Decrease the total supply
        totalSupply -= _amount;
        // Decrease the balance of the sender address
        balances[_from] -= _amount;
    }
}