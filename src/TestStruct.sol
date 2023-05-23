// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct Params {
    uint128 p1;
    uint128 p2;
    bytes32 p3;
    bool p4;
    string p5;
    string[] p6;
}

contract TestStruct {
    Params p;

    function withStruct(Params calldata _p) public {
        p = _p;
    }

    function withoutStruct(
        uint128 _p1,
        uint128 _p2,
        bytes32 _p3,
        bool _p4,
        string calldata _p5,
        string[] calldata _p6
    ) public {
        p = Params({p1: _p1, p2: _p2, p3: _p3, p4: _p4, p5: _p5, p6: _p6});
    }
}
