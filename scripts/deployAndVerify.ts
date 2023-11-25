import { ethers } from "hardhat";
const hre = require("hardhat");

async function main() {
  //Deploy arrauy Contract
  const Array = await ethers.getContractFactory("Array");
  const array = await Array.deploy();

  await array.deployTransaction.wait(5);

  await hre.run("verify:verify", {
    address: array.address,
    contract: "contracts/Array.sol:Array",
  });

  console.log("Array Contract Address-> ", array.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log("Deploy error-> ", error);
    process.exit(1);
  });
