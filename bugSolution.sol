```solidity
function withdraw(uint amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    uint balanceBefore = balances[msg.sender];
    balances[msg.sender] -= amount;
    bool success = payable(msg.sender).send(amount);
    require(success, "Transfer failed.");
    // Assertion to check for balance consistency
    assert(balances[msg.sender] == balanceBefore - amount); 
}
```