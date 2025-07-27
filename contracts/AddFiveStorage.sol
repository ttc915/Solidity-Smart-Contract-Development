// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating o ur vesion

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    // + 5
    // override
    // virtual override
    function store(uint256 _number) public override {
        myFavoriteNumber = _number + 5;
    }
    
}