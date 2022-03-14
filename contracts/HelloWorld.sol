// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

    contract HelloWorld{
    string public myClientName;
    string public tag = "Welcome ";

    constructor(string memory clientName){
        myClientName = clientName;
    }

    function createGreeting (string memory newGreeting) public {
        myClientName = newGreeting;
    }

    function getGreeting() public view returns (string memory) {
        return string(abi.encodePacked(tag, myClientName));
    }
}
