const SendMoneyApproval = artifacts.require("SendMoneyApproval");

module.exports = function (deployer) {
  deployer.deploy(SendMoneyApproval);
};
