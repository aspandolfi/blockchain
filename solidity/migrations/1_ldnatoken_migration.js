const LdnaToken = artifacts.require("LdnaToken");

module.exports = function (deployer) {
    deployer.deploy(LdnaToken);
};