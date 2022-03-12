pragma solidity ^0.6.0;
import "./Basic.sol";

contract Compound is Basic{
    bytes public daoType = "compound";

    constructor(address _owner,address _erc20Factory) public {
        owner = _owner;
        erc20Factory = _erc20Factory;
    }
}