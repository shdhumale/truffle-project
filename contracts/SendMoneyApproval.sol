// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//Main class that will be used to perform operation on our block.
contract SendMoneyApproval
{
    address public sender;
    address public receiver;
    address public approver = 0x25C0F7Fc38B0d54ea69D93b676338e10122e161c;

  function deposit(address _sender, address _receiver) external payable {
    sender = _sender;
    receiver = _receiver;
  }

   function approve() external {
    payable (receiver).transfer(1);
   }
// function sendAmount() external payable {
//      payable(receiver).transfer(1);
//   }
  
}