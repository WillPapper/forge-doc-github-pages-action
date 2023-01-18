// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Tree.sol";

contract TreeTest is Test {
    Tree public tree;

    function setUp() public {
        tree = new Tree();
    }

    function testAge(uint256 age) public {
        vm.assume(age < type(uint256).max - 1);
        assertEq(tree.age(age), age + 1);
    }

    function testLeaves() public {
        assertEq(tree.leaves(), 2);
    }
}
