pragma solidity ^0.6.0;
import "./Basic.sol";

contract Independent is Basic{
    bytes public daoType = "independent";

    constructor(address _owner,address _erc20Factory) public {
        owner = _owner;
        erc20Factory = _erc20Factory;
    }
}