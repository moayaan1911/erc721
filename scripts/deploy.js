const { ethers } = require("hardhat");

async function main() {
  const mynft = await ethers.getContractFactory("MyNFT");
  const myNFT = await mynft.deploy();
  await myNFT.deployed();
  console.log(`Contract deployed at ${myNFT.address}`);
}
// 0x7260Fe5F99Cfd8a59D8194BbB1Fc6e06f0188d15
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
