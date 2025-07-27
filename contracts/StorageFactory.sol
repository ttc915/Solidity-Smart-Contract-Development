// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our vesion

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStoragesContracts;
    
    function createSimpleStorageContract() public {
        // How do we know the address of the newly deployed contract?
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStoragesContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary listOfSimpleStoragesContracts
        listOfSimpleStoragesContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStoragesContracts[_simpleStorageIndex].retrieve();
    } 
}