// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Logger} from "../src/Logger.sol";

/// @title LoggerTest
/// @notice A contract that tests the Logger contract. It is also a `Logger` so
/// that it has the event definition, but it calls an external contract in the
/// test.
contract LoggerTest is Test, Logger {
    /// The external `Logger` contract.
    Logger immutable iLogger;

    /// @notice Construct a new `LoggerTest` contract.
    constructor() {
        iLogger = new Logger();
    }

    /// Test that calling log emits the Log event.
    function testLog(bytes memory data) external {
        vm.expectEmit(false, false, false, true);
        emit Log(data);
        iLogger.log(data);
    }
}
