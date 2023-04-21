// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract WhiteList{

uint8 public maxWhiteListedAddresses;
uint8 public numAddressesWhiteListed;

mapping(address => bool) public whiteListedAddresses;

constructor(uint8 _maxWhiteListedAdresses){
    maxWhiteListedAddresses = _maxWhiteListedAdresses;
}

function addAddressToWhiteList()public {
    require(!whiteListedAddresses[msg.sender], "Sender already in the whitelist");

    require(numAddressesWhiteListed < maxWhiteListedAddresses, "Max limit reached");

    whiteListedAddresses[msg.sender] = true;
    numAddressesWhiteListed += 1;    


}

}