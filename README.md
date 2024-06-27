# My Token

The Solidity contract defines a token with public details, tracks balances using a mapping, and includes functions to mint (increase supply and balance) and burn (decrease supply and balance) tokens.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions. The function Mint coins is for increasing the total supply of the coins and the Burn is to decrease the amount of the coins. This is a simple program to maintain coins for different addresses.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Metacrafters.sol). Copy and paste the following code into the file:

```javascript

contract BikeFuel {
    // Public variables to store token details
    string public name = "BikeFuel";
    string public symbol = "BFC";
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Metacrafters.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Metacrafters" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Mint and Burn function. Click on the "Metacrafters" contract in the left-hand sidebar, and then click on the "Mint" or "Burn" function. Before using any of these function you must input addresses into the balances array for example, 0x0000000000000000000000000000000000000000. 

To use the "Mint" and "Burn" functions you must first enter the correct parameters. First being the target address and the other being the amount. Both of these values are to be seperated by a coma.

You can check the total supply by calling the totalSupply variable.


## Authors

Anadi Mishra
Student at Chandigarh University


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
