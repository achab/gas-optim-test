// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IA {
    function num() external view returns (uint256);
}

contract B {
    uint256 public num;
    IA A;

    function set(uint256 _num) public {
        num = _num;
    }

    function setA(address addr) public {
        A = IA(addr);
    }

    function compute(uint256 n) public returns (uint256) {
        set(30);

        uint256 tmp = 0;
        for (uint256 i = 0; i < n; i++) {
            tmp += num;
        }
        return tmp;
    }

    function computeFromA(address addr, uint256 n) public returns (uint256) {
        setA(addr);

        uint256 tmp = 0;
        for (uint256 i = 0; i < n; i++) {
            tmp += A.num();
        }
        return tmp;
    }

    function compute_1() public returns (uint256) {
        return compute(1);
    }

    function computeFromA_1(address addr) public returns (uint256) {
        return computeFromA(addr, 1);
    }

    function compute_100() public returns (uint256) {
        return compute(100);
    }

    function computeFromA_100(address addr) public returns (uint256) {
        return computeFromA(addr, 100);
    }
}
