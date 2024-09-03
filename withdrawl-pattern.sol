// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract withdrawl{
    address payable public richest;
    uint max;
    mapping(address => uint) public richAddress;
    constructor() payable{
        richest = payable (msg.sender);
        max = msg.value;
        richest.transfer(max);
    }

    function sendEth() external payable {
        require(msg.value>max,"You are not the richest person!");
        richest = payable (msg.sender);
        max = msg.value;
        richAddress[richest] = max;
        // richest.transfer(max);
    }

    //Send and receive functions should be different.
    function withdraw() external payable {
        uint amount = richAddress[msg.sender];
        richAddress[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

}

contract player{
    //no receive function so it will revert the transaction and therefore will temper our logic of withdrawl contract
}