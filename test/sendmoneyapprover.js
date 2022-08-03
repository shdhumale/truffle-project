const SendMoneyApproval = artifacts.require('../../contracts/SendMoneyApproval.sol');

  contract('SendMoneyApproval', function(accounts) {

    it('deploying and initiates contract', async function() {
      const contract = await SendMoneyApproval.deployed();
      const approver = await contract.approver.call();
      assert.equal(approver, 0x87087358be5A742759FE0Cfc215e4bc1ac947A7f, "approvers don't match");
    });
    it('takes a deposit', async function () {
      const contract = await SendMoneyApproval.deployed();
      //await contract.deposit(accounts[0], { value: 1e+18, from: accounts[1] });
      await contract.deposit(accounts[0], accounts[1], { value: 1e+18, from: accounts[0] });
      //assert.equal(web3.eth.getBalance(contract.address), 1e+18, "amount did not match");
    });
    it('makes the transaction when approved, approver: ' + accounts[2], async function () {
      const contract = await SendMoneyApproval.deployed();
      //await contract.deposit(accounts[0], { value: 1e+18, from: accounts[1] });
      await contract.deposit(accounts[0], accounts[1], { value: 1, from: accounts[0] });
      await contract.approve({ from: accounts[2] });
      assert.equal(web3.eth.getBalance(contract.address), 0, "didn't transfer ether");
    });

  });
