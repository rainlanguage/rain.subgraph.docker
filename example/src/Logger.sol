// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.19;

/// @title Logger
/// @notice A contract that logs data. Used to smoke test the subgraph testing
/// environment.
contract Logger {
    /// @notice Emitted when data is logged.
    /// @param data The data that was logged.
    event Log(bytes data);

    /// @notice Logs data.
    /// @param data The data to log.
    function log(bytes memory data) external {
        emit Log(data);
    }
}
