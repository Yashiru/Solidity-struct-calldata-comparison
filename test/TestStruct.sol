// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {TestStruct, Params} from "../src/TestStruct.sol";

contract TestStructTest is Test {
    TestStruct public testStruct;

    function setUp() public {
        testStruct = new TestStruct();
    }

    function testWithStruct() public {
        string[] memory p6 = new string[](2);

        p6[0] = "test1";
        p6[1] = "test2";

        testStruct.withStruct(
            Params({
                p1: uint128(9),
                p2: uint128(10),
                p3: bytes32(uint256(11)),
                p4: true,
                p5: "test",
                p6: p6
            })
        );

        console.logBytes(
            abi.encode(
                Params({
                    p1: uint128(9),
                    p2: uint128(10),
                    p3: bytes32(uint256(11)),
                    p4: true,
                    p5: "test",
                    p6: p6
                })
            )
        );
    }

    function testWithoutStruct() public {
        string[] memory p6 = new string[](2);

        p6[0] = "test1";
        p6[1] = "test2";

        testStruct.withoutStruct(
            uint128(9),
            uint128(10),
            bytes32(uint256(11)),
            true,
            "test",
            p6
        );

        console.logBytes(
            abi.encode(
                uint128(9),
                uint128(10),
                bytes32(uint256(11)),
                true,
                "test",
                p6
            )
        );
    }
}
