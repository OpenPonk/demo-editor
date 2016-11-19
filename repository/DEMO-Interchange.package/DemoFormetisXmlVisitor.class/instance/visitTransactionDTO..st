visitor
visitTransactionDTO: anElement
	|transaction|
	transaction := DemoTransactionKind new. 
	model add: transaction.
	modelObject := transaction