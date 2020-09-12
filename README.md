http://localhost:3001/top-ten-classic-sci-fi/contract  
http://localhost:3001/api/top-ten-classic-sci-fi/1  

- local  
truffle combine  
truffle console  
truffle migrate --reset  
var tt = await TopTenClassicSciFi.deployed()  
tt.mintTo(newAddress)  
tt.ownerOf(1)  
tt.tokenURI(1)  
  
- Rinkeby  
truffle deploy --network rinkeby  
truffle console --network rinkeby  
var tt = await TopTenClassicSciFi.at('0x03d9B829Ce53B06D2554cBaf6B215aEe0e4d2F0e')  
node scripts/mint.js  
## TODO  
[x] First page on prod is accessible under dummy URL  
[x] CI  
[x] First page  
[x] Collection  
[x] Item  
[x] Page titles  
[x] Domain  
[x] Contracts on testnet  
[] Contracts on Mainnet  
[] Change the contract address on data yaml file  
[] Change the store front on data yaml file  
[] SEO  
[] About us  
[] Party!  

## Costs  
3$ domain registery  
```
1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x81e61c1895136d1936dc1b4fca7e974af99e9a29d237ab8b8a39f00d59d9e27c
   > Blocks: 0            Seconds: 9
   > contract address:    0xf7D3318A0a2673aa5a2E1FB8A47d8AB4460a0b5F
   > block number:        10845908
   > block timestamp:     1599897556
   > account:             0x9b21cF655781A15f0AB5109f5d6291874bBf8EB9
   > balance:             0.068483045871762104
   > gas used:            164175 (0x2814f)
   > gas price:           123 gwei
   > value sent:          0 ETH
   > total cost:          0.020193525 ETH

   Pausing for 1 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 10845910)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:         0.020193525 ETH


2_deploy_contracts.js
=====================

   Deploying 'TopTenClassicSciFi'
   ------------------------------

Error:  *** Deployment Failed ***

"TopTenClassicSciFi" could not deploy due to insufficient funds
   * Account:  0x9b21cF655781A15f0AB5109f5d6291874bBf8EB9
   * Balance:  63275102871762104 wei
   * Message:  insufficient funds for gas * price + value
   * Try:
      + Using an adequately funded account
      + If you are using a local Geth node, verify that your node is synced.


```
