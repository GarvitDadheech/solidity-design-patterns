// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract factory{
    //we should know about all the instances created
    //factory pattern says whenever u create an object store its info.
    item[] public arr;
    function instance() public{
        item obj = new item();
        arr.push(obj);
    }
}
contract item{

}