// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract SimpleStorage {

    uint256 favNumber;

// function call => transaction
    function store(uint256 _favNumber) public {
        favNumber = _favNumber; 
    }


    // struct
    struct People {
        uint256 favNumber;
        string name;
    }



    People[] public people;

    

    mapping(string => uint256) public nameToFavNumber;

    function addPerson(string memory _name,uint256 _favNumber) public {
        people.push(People(_favNumber,_name));
        nameToFavNumber[_name] = _favNumber;
    }



    // view,pure function doesnt change blockchain
    // pure => do math and struff

    function retrieve2(uint256 f) public pure returns(uint256) {
         f + f;
    }

    function retrieve() public view returns(uint256) {
        return favNumber;
    }



}