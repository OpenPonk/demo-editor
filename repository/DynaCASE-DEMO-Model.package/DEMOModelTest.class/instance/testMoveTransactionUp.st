tests-ids
testMoveTransactionUp
	| tr1 tr2 tr3 |
	model add: (tr1 := (TransactionKind new id: 0)).
	model add: (tr2 := (TransactionKind new id: 1)).
	model add: (tr3 := (TransactionKind new id: 2)).
	
	model moveTransactionUp: tr2.
	self assert: tr1 id equals: 1.
	self assert: tr2 id equals: 0.
	self assert: tr3 id equals: 2.
	
	model moveTransactionUp: tr2.
	self assert: tr1 id equals: 1.
	self assert: tr2 id equals: 0.
	self assert: tr3 id equals: 2.
	
	model moveTransactionDown: tr1.
	self assert: tr1 id equals: 2.
	self assert: tr2 id equals: 0.
	self assert: tr3 id equals: 1.
	
	model moveTransactionDown: tr1.
	self assert: tr1 id equals: 3.
	self assert: tr2 id equals: 0.
	self assert: tr3 id equals: 1.
	
	model moveTransactionUp: tr1.
	self assert: tr1 id equals: 2.
	self assert: tr2 id equals: 0.
	self assert: tr3 id equals: 1.