pragma solidity ^0.6.12;

import "./ERC721Tradable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Creature
 * Creature - a contract for my non-fungible creatures.
 */
contract TopTenClassicSciFi is ERC721Tradable {
  constructor(address _proxyRegistryAddress) ERC721Tradable("TopTenClassicSciFi", "TTCSF", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https://api.xcgradus.pomodoro.works/top-ten-classic-sci-fi/items/";
  }

  function contractURI() public view returns (string memory) {
    return "https://api.xcgradus.pomodoro.works/top-ten-classic-sci-fi/contract";
  }
}
