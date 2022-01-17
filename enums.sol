pragma solidity ^0.8.7;
//SPDX-License-Identifier: MIT

contract enumContract {
    enum State { Waiting, Ready, Active }
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }
}