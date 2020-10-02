## XCGRADUS
XCGRADUS is a project to create original digital paintings and store their identity on Ethereum blockchain.  
You can find ERC721 contracts in contracts folder. For more information check the [website](https://xcgradus.xyz)

## Tokens addresses 
- https://etherscan.io/token/0x171FEF047CA885dc2B70626644Ee7C2160152971
- https://rinkeby.etherscan.io/token/0x112537FF9958c9B14E4FC0f427c29Ee8ECd44f98  
  
### development commands
truffle combine  
truffle console  
truffle migrate --reset  
var tt = await TopTenClassicSciFi.deployed()  
tt.mintTo(newAddress)  
tt.ownerOf(1)  
tt.tokenURI(1)  
http://localhost:3001/top-ten-classic-sci-fi/contract  
http://localhost:3001/api/top-ten-classic-sci-fi/1  
  
#### Rinkeby  
truffle deploy --network rinkeby  
truffle console --network rinkeby  
var tt = await TopTenClassicSciFi.at('0x03d9B829Ce53B06D2554cBaf6B215aEe0e4d2F0e')  
node scripts/mint.js  
