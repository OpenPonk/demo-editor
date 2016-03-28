tests-ids
testNextTransactionKindID
	self assert: model nextTransactionKindID equals: 0.
	model add: TransactionKind new.
	self assert: model nextTransactionKindID equals: 1.
	model add: (TransactionKind new id: 5).
	self assert: model nextTransactionKindID equals: 6