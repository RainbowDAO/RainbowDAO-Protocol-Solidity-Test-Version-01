pragma solidity ^0.6.0;
import "./Basic.sol";
import "../lib/TokenSet";

contract League is Basic{
    using Set for Set.Address;
    bytes public daoType = "league";
    Set.Address[] daoList;

    constructor(address _owner,address _erc20Factory) public {
        owner = _owner;
        erc20Factory = _erc20Factory;
    }

    function getDaoListLength() public view returns(uint) {
        
        return daoList.length();
    }

    function getAddressByIndex(uint index) public view returns(address) {
        
        return daoList.at(index);
    }

    function getAddressList(uint index) public view returns(Set.Address[] memory) {
        
        return daoList;
    }
}