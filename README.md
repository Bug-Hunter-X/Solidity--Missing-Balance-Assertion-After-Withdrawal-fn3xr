# Solidity: Missing Balance Assertion After Withdrawal

This repository demonstrates a common bug in Solidity smart contracts: failing to verify the balance after a fund transfer.  Incorrect balance updates can lead to vulnerabilities and unexpected behavior.

The `bug.sol` file shows a `withdraw` function missing a crucial assertion.  The `bugSolution.sol` file shows the corrected version with an assertion added for balance verification. 

**Key takeaway:** Always verify the balance after any transfer of funds to prevent unexpected state inconsistencies.