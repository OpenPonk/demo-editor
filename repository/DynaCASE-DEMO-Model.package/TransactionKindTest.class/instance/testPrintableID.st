tests-visualization
testPrintableID
	| transKind |
	transKind := TransactionKind new.
	transKind id: 5.
	self assert: (transKind printableID) equals: 'T5' 