// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//Main class that will be used to perform operation on our block.
contract SendMoneyWithApproval
{
    address public sender;
    address payable public receiver;
    address public approver;
    uint public amount = 0;
 
 //function() external payable {  }

  function deposit(address _sender, address payable _receiver, address _approver, uint _amount) public payable {
    sender = _sender;
    receiver = _receiver;
    approver = _approver;
    amount = _amount;
  }
  
  function getBalance() public view returns(uint)
       {
           return (receiver).balance;
       }       

  function viewApprover() external view returns(address) {
    return(approver);
  }
   function approve() public payable {  
     receiver.transfer(amount * (1 ether));
     //return true;
   }

// function sendAmount() external payable {
//      payable(receiver).transfer(1);
//   }
  
}