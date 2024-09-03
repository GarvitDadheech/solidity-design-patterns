// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract Company {
    //this is called name registry as we are registering all the function names present in CEO in our mapping
    mapping[string => CEO] public arr;

    function createObject() public {
        arr["CEO"] = new CEO();
    }
}

contract CEO{
    function abc() {

    }
}

contract Employee{

}

contract HR{

}

contract Manager{

}