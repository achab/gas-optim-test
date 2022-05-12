const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("B", function () {
    let a;
    let b;
  it("deploy stuff", async function () {
    const AFactory = await ethers.getContractFactory("A");
    a = await AFactory.deploy();
    await a.deployed();


    const BFactory = await ethers.getContractFactory("B");
    b = await BFactory.deploy();
    await b.deployed();
  });

  it("call compute_1", async function () {
    await b.compute_1();
  });
  it("call compute_100", async function () {
    await b.compute_100();
  });
  it("call computeFromA_1", async function () {
    await b.computeFromA_1(a.address);
  });
  it("call computeFromA_100", async function () {
    await b.computeFromA_100(a.address);
  });
});
