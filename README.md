Self-executing contracts, or smart contracts, have the conditions of the contract explicitly encoded into the code. They are powered by the Ethereum Virtual Machine (EVM) and operate on blockchain platforms such as Ethereum.

Require(): This is a common function in smart contracts that verifies inputs or conditions prior to contract execution. The function will stop and undo all state modifications if the condition passed to require() evaluates to false. It's frequently used for access control, input validation, and making sure certain prerequisites are satisfied before moving on.

Assert(): As with require(), assert() is used to verify that a condition never, under normal circumstances, evaluates to false. A significant mistake in the logic of the contract is indicated if the condition supplied to assert() evaluates to false. In contrast to require(), assert() always uses up all of the transaction's gas and is often only used to check for internal issues.

Revert(): This function is used to undo any changes made to the state of a smart contract and halt its execution instantly in the event that something goes wrong. Usually, it's employed to gracefully manage exceptions and errors. Revert(), in contrast to assert(), enables the return of a custom error message that gives additional information about the rationale behind the revert.

These features, which enforce preconditions, validate inputs, and efficiently handle failures, contribute to the integrity and security of smart contracts.
