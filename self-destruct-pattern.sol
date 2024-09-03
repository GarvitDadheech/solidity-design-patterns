// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract selfDestruct{
    address payable public manager;
    
    constructor() {
        manager = payable(msg.sender);
    }

    function sendEtherContract() public payable {

    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }

    receive() external payable {

    } 

    function destroy() public  {
        require(manager==msg.sender,"You are not the manager!");
        selfdestruct(manager);
    }   

}