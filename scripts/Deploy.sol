// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

import 'forge-std/Test.sol';

import {Contract} from "../src/Contract.sol";

contract Deploy is Test {
    // Contracts
    Contract c;

    function run() public {
        vm.startBroadcast();

        // DEPLOY CONTRACT
        c = new Contract();

        vm.stopBroadcast();
    }

}
