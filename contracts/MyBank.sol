// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//Main class that will be used to perform operation on our block.
contract MyBank
{
//This is variable used for storing our balanceValue
int balanceValue;

//build constructor

constructor() 
{
//initialise the variable
balanceValue = 1;
}

//As getBalance is not manupulating the value it is used to show the data on the screen and use view returns(int)
function getBalanceValue() public view returns(int)
{
//return the current value of balanceValue
return balanceValue;
}

function withdrawMyBalance(int amount) public
{
balanceValue = balanceValue - amount;

}

function depositeMyBalance(int amount) public
{

balanceValue = balanceValue + amount;
}

}