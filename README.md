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

- Ropsten
truffle deploy --network ropsten
truffle console --network ropsten
var tt = await TopTenClassicSciFi.at('0x03d9B829Ce53B06D2554cBaf6B215aEe0e4d2F0e')

## TODO
[x] First page on prod is accessible under dummy URL
[x] CI
[x] First page
[x] Collection
[x] Item
[x] Page titles
[] Domain
[] Contracts on testnet
[] Contracts on Mainnet
[] Party!
[] SEO
[] About us
