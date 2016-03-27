tests-removing
testRemove
	| element |
	element := AggregateTransactionKind new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model aggregateTransactionKinds includes: element).
	
	element := InformationLink new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model informationLinks includes: element).
	
	element := ProcessLink new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model processLinks includes: element).
	
	element := ProductKind new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model productKinds includes: element).
	
	element := TransactionKind new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model transactionKinds includes: element)