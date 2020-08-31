pragma solidity ^0.5.0;

import "./ERC721Tradable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract TopTenClassicSciFi is ERC721Tradable {
  constructor(address _proxyRegistryAddress) ERC721Tradable("TopTenClassicSciFi", "TTCSF", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https://xcgradus.xyz/api/top-ten-classic-sci-fi/";
  }

  function contractURI() public view returns (string memory) {
    return "http://xcgradus.xyz/top-ten-classic-sci-fi/contract";
  }
}

