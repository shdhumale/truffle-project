const SendMoneyWithApproval = artifacts.require("SendMoneyWithApproval");

module.exports = function (deployer) {
  deployer.deploy(SendMoneyWithApproval);
};
