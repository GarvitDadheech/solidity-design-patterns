// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract withdrawl{
    address payable public richest;
    uint max;

    constructor() payable{
        richest = payable (msg.sender);
        max = msg.value;
        richest.transfer(max);
    }

    function sendEth() external payable {
        require(msg.value>max,"You are not the richest person!");
        richest = payable (msg.sender);
        max = msg.value;
        richest.transfer(max);
    }
}

contract player{
    //no receive function so it will revert the transaction and therefore will temper our logic of withdrawl contract
}