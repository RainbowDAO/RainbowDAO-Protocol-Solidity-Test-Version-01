pragma solidity ^0.6.0;


contract DaoBaseInfo{
    address public owner;
    address public erc20Factory;
    uint public index;
    
    struct DaoInfo{
        string name;
        string logo;
        string des;
        address authority;
        address manage;
        address vault;
    }
    mapping(address => uint[]) public userDaos;
    DaoInfo[] public array;
    
    constructor(address _owner,address _erc20Factory) public {
        owner = _owner;
        erc20Factory = _erc20Factory;
    }
    
    modifier onlyOnwer(){
        require(msg.sender == owner, "only owner");
        _;
    }
    
    
    function getArrayLength() public view returns(uint){
        return array.length;
    }
    
    function getDaoInfo(uint index) public view returns(DaoInfo memory){
        return array[index];
    }
    
    // function _init_contracts(string memory _name,string memory _logo, string memory _des) internal {
        
    // }
    
    function getOwnedDaos() public view returns(uint[] memory){
        return userDaos[msg.sender];
    }
}