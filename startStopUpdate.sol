pragma solidity ^0.8.0;

contract SendMoney {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    uint256 balanceRec;

    function checkBalance(address _Acc) public view returns (uint256) {
        return _Acc.balance;
    }

    function ReciveMoney() public payable {
        balanceRec += msg.value;
    }

    function SendMoneyTo(address payable _to) public payable {
        require(msg.sender == owner, "You R Not owner");
        _to.transfer(balanceRec);
    }
}
