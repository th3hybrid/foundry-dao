// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimeLockController {
    //minDelay is how long you to have to wait before executing
    //proposers is the list of addresses that can propose
    //executors is the list of addresses that can execute
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors, address admin) TimeLockController(minDelay,proposers,executors,msg.sender) {

    }
}