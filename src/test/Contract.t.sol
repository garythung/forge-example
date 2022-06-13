// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.10;

import "forge-std/Test.sol";

import "./Utils.sol";
import {Contract} from "../Contract.sol";

contract BaseUsers is Test {
    Utils internal utils;
    address payable[] internal users;

    address internal alice;
    address internal admin;

    constructor() {
        utils = new Utils();
        users = utils.createUsers(2);

        alice = users[0];
        vm.label(alice, "Alice");
        admin = users[1];
        vm.label(admin, "Admin");
    }
}

contract BaseTest is BaseUsers {
    Contract a;

    function setUp() public virtual {
        a = new Contract();
    }
}

contract ContractTest is BaseTest {
    function setUp() public override {
        BaseTest.setUp();
    }

    function testExample() public {
        assertEq(a.balanceOf(address(this)), 0);
        a.mint(address(this), 1e18);
        assertGt(a.balanceOf(address(this)), 0);
    }
}
