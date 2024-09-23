// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import  {OperatorRegistry} from "../src/OperatorRegistry.sol";

contract OperatorTest is Test {
    OperatorRegistry public op;

    function setUp() public {
        op = new OperatorRegistry();
    }

    function test_Reg() public {
        string memory asciiMessage = "I agree to have my operator EIGEN allocation be claimed from the registered wallet in this transaction.";
        op.Register(address(0), asciiMessage);
    }

    function testFail_Reg() public {
        string memory asciiMessage = "I dont agree!";
        op.Register(address(0), asciiMessage);
        vm.expectRevert();
    }

}
