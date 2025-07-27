// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our vesion

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage public simpleStorage;
    
    function createSimpleStorageContract() public {
        // How do we know the address of the newly deployed contract?
        simpleStorage = new SimpleStorage();
    }
}