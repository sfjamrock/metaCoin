pragma solidity ^0.4.17;

contract MetaCoin {
    uint8 mynumber = 5;

    address owner;
    mapping(address => uint256) public balances;

    function MetaCoin() public {
        owner = msg.sender;
        balances[owner] = 200000;
    }

    function transfer(uint amount, address recipient) public {
        require(balances[msg.sender] >= amount);

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }
}