// SPDX-License-Identifier: CAL
pragma solidity =0.8.19;

import {Script} from "forge-std/Script.sol";
import {Logger} from "src/Logger.sol";

/// @title DeployLogger
/// @notice A script that deploys a Logger.
/// This is intended to be run on every commit by CI to a testnet such as mumbai,
/// then cross chain deployed to whatever mainnet is required, by users.
/// It can also be used to deploy a logger to local subgraph test network.
contract DeployDISPair is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYMENT_KEY");

        vm.startBroadcast(deployerPrivateKey);
        Logger logger = new Logger();
        (logger);
        vm.stopBroadcast();
    }
}
