# My Token

This Solidity program is a simple "My Token" program that demonstrates the minting and burning of the tokens.  The program allows users to mint and burn tokens. The contract also keeps track of the balance of each address using a mapping.

## Description
This program is a simple contract that uses a mapping data structure to keep track of how many tokens are owned by each address. This is a Solidity smart contract for a token called Gizmo (GM). It includes functions for minting and burning tokens—minting to add tokens and burning to remove them—are provided by the program, with the current total supply and individual balances being tracked through a mapping. Overall, this program acts as a useful simulation, showing how tokens are minted and burned.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```solidity
pragma solidity 0.8.18;
contract MyToken {
        string public TokenName = "Gizmo";
        string public TokenAbbrv = "GM";
        uint public TotalSupply = 0;

        mapping(address => uint) public balance;

        function mint(address add, uint val) public{
            TotalSupply += val;
            balance[add] += val;
        }

        function burn(address add, uint val) public{
            if(balance[add] >= val){
                TotalSupply -= val;
                balance[add] -= val;
            }
        }

}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button.

To deploy the contract, select the "Deploy and Run Transactions" button. You can deploy the contract from a new window that will open as a result. Before deploying, don't forget to choose the "MyToken" contract.

Set the parameters for the balance, mint, and burn functions in the deployment window "Deployed Contracts."

* To create new tokens, enter the recipient's address and the number of tokens you want to create, then click transact.
* To burn tokens, enter the recipient's address and the number of tokens you want to burn, then click transact.
* To view the address's current balances, enter the recipient's address and the number of tokens you want to mint, then click "call." By clicking the "totalSupply" button, you can also see the total supply.

## Authors

NCTIAN April  
[Discord: @AprilCadag](https://discordapp.com/users/AprilCadag#0322)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
