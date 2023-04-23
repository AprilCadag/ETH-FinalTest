// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // public variables here
        string public TokenName = "Gizmo";
        string public TokenAbbrv = "GM";
        uint public TotalSupply = 0;

    // mapping variable here
        mapping(address => uint) public balance;

    // mint function
        function mint(address add, uint val) public{
            TotalSupply += val;
            balance[add] += val;
        }

    // burn function
        function burn(address add, uint val) public{
            if(balance[add] >= val){
                TotalSupply -= val;
                balance[add] -= val;
            }
        }

}
