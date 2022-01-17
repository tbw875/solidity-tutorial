pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract myContract{
    string public value = "myValue"; // Storing variable "value" and typing it

///    constructor() { //starting status of variable `value`
///        value = "myValue";
///    }

 ///   function get() public view returns(string memory) { // public view sets visibility and that it is read-only
 ///        return value;
 ///   }

    function set(string memory _value) public {
        value = _value;
    }
}