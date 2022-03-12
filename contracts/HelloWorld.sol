// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract HelloWorld {


   struct Car { 
        uint amout; 
        string name; 
    }

   uint newAmount = 1000;

   function createCar(uint _amount, string memory _name) external view returns (Car memory _car) {  
        require(_amount > newAmount);
        Car memory newCar = Car(newAmount,_name);
        return newCar;   
    }
    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}