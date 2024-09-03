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