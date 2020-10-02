require('dotenv').config()
const web3 = require('web3')
const fs = require('fs');

const HDWalletProvider = require('@truffle/hdwallet-provider');
const MNEMONIC = fs.readFileSync(".secret").toString().trim();
const INFURA_KEY = process.env.INFURA_KEY
const NFT_CONTRACT_ADDRESS = process.env.NFT_CONTRACT_ADDRESS
const OWNER_ADDRESS = process.env.OWNER_ADDRESS
const NETWORK = process.env.NETWORK
const NUM_ITEMS = 9

if (!MNEMONIC || !INFURA_KEY || !OWNER_ADDRESS || !NETWORK || !NFT_CONTRACT_ADDRESS) {
  console.error(
    'Please set a mnemonic, infura key, owner, network, and contract address.'
  )
  return
}

const NFT_ABI = [
  {
    constant: false,
    inputs: [
      {
        name: '_to',
        type: 'address',
      },
    ],
    name: 'mintTo',
    outputs: [],
    payable: false,
    stateMutability: 'nonpayable',
    type: 'function',
  },
]

async function main() {
  const provider = new HDWalletProvider(
    MNEMONIC,
    `https://${NETWORK}.infura.io/v3/${INFURA_KEY}`
  )
  const web3Instance = new web3(provider)

  if (NFT_CONTRACT_ADDRESS) {
    const nftContract = new web3Instance.eth.Contract(
      NFT_ABI,
      NFT_CONTRACT_ADDRESS,
      { gasLimit: '1000000' }
    )
console.log(`Minting for ${NETWORK}, ${NFT_CONTRACT_ADDRESS}`)
    // NFTs issued directly to the owner.
    for (var i = 0; i < NUM_ITEMS; i++) {
      const result = await nftContract.methods
        .mintTo(OWNER_ADDRESS)
        .send({ from: OWNER_ADDRESS })
      console.log('Minted item. Transaction: ' + result.transactionHash)
    }
  } else {
    console.error(
      'Add NFT_CONTRACT_ADDRESS or FACTORY_CONTRACT_ADDRESS to the environment variables'
    )
  }
}

main()
