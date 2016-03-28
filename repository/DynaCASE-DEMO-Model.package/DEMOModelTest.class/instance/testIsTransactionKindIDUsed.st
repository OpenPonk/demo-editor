tests-ids
testIsTransactionKindIDUsed
	| trans |
	trans := (TransactionKind new id: 2).
	model add: trans.
	self deny: (model isTransactionKindIDUsed: 0).
	self assert: (model isTransactionKindIDUsed: 2).
	trans id: 3.
	self deny: (model isTransactionKindIDUsed: 2).
	self assert: (model isTransactionKindIDUsed: 3)