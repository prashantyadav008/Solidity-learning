import { ethers } from "hardhat";

async function main() {
  const Array = await ethers.getContractFactory("Array");
  const array = await Array.deploy();
  console.log("Array Contract Address-> ", array.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log("Deploy error-> ", error);
    process.exit(1);
  });
