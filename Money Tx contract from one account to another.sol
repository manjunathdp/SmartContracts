// Money Tx contract from one account to another
pragma solidity ^0.8.0;

contract SendMoney {
    uint256 balanceRec;

    function getBalance(address _Acc) public view returns (uint256) {
        return _Acc.balance;
    }

    function ReciveMoney() public payable {
        balanceRec += msg.value;
    }

    function SendMoneyTo(address payable _to) public payable {
        _to.transfer(balanceRec);
    }
}
