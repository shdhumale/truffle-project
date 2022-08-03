// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//Main class that will be used to perform operation on our block.
contract SendMoney
{

    address public receiver =  0x6B39c13d692098414FB49A89efDa79F88199200B;


function sendAmount() external payable {
     payable(receiver).transfer(1);
  }
  
}