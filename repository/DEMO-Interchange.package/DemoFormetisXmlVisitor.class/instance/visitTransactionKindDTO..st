visitor
visitTransactionKindDTO: anElement
	| transaction |
	transaction := DemoTransactionKind new.
	model add: transaction.
	modelObject := transaction