pragma solidity ^0.8.7;
//SPDX-License-Identifier: MIT

contract myContract{
    uint256 public peopleCount;
    mapping(uint => Person) public people; //uint is key, Person is value

    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastname;
    }

    constructor() {
        owner = msg.sender;
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal{
        peopleCount +=1;
    }

}