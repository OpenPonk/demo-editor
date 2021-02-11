tests
testName
	| transKind |
	transKind := TransactionKind new.
	transKind name: 5.
	self assert: (transKind printableID) equals: 'T5' 