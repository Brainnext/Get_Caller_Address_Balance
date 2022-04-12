// SPDX-License-Identifier: UNLICENSED 

pragma solidity ^0.8.0;

// smart contract that returns address and current value of an address ether

contract User {
    
    // declaring an address state variable named owner and can only be called from inside this contract
    address private owner; 
    uint256 private ownerbal;

    // using constructor to declare owners address
    constructor () {
        owner= msg.sender;
        ownerbal= owner.balance;
    }

    // function to return address of the user/caller of the function
    function getAddress() public view returns(address) {
        return owner;
    }

    // function to return balance of the user
    function getBalance() public view returns(uint256) {
        return ownerbal;
    }
   
}
