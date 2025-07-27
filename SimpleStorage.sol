// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // stating our vesion

contract SimpleStorage {
    // Basic types: boolen, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    uint256 myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; // []

    // Person public pat = Person(6, "Pat");
    // Person public mariah = Person({favoriteNumber : 7, name : "Mariah"});


    function store(uint256 _favorite_number ) public {
        myFavoriteNumber = _favorite_number;

    }

    // view, pure
    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person( _favoriteNumber, _name));
    }
}