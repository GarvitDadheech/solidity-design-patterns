// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract selfDestruct{
    address payable public manager;
    bool destroyed;

    constructor() {
        manager = payable(msg.sender);
    }

    modifier isNotDestroyed{
        require(destroyed!=true,"The contract has been destroyed!");
        _;
    }

    function sendEtherContract() public payable isNotDestroyed {

    }

    function contractBalance() public view isNotDestroyed returns(uint) {
        return address(this).balance;
    }

    receive() external payable isNotDestroyed {

    } 

    // function destroy() public  {
    //     require(manager==msg.sender,"You are not the manager!");
    //     selfdestruct(manager); Bad pratice
    // }   

    function destroy() public isNotDestroyed {
        require(manager==msg.sender,"You are not the manager!");
        manager.transfer(contractBalance());
        destroyed = true;
    }

}