// Money Tx contract from one account to another
pragma solidity ^0.5.13;
    contract SendMoney {
        uint  balanceRec;

        function getBalance( address _Acc) public view returns(uint){
        return _Acc.balance;}
       
        function ReciveMoney() public  payable {
            balanceRec += msg.value;
            }
        function SendMoneyTo(address payable _to) public payable {
        
           
            _to.transfer(balanceRec);

        }

    }