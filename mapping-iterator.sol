// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    mapping(address => uint) public tokens;
    //if there is a key which is imp and maybe reused for some future purpose then we should store it(like in arr).
    address[] public arr;

    function transfer(uint amount) public {
        tokens[msg.sender] = amount;
        arr.push(msg.sender);
    }
}