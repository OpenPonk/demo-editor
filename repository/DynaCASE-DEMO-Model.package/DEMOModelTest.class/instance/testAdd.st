tests-adding
testAdd
	| element |
	element := AggregateTransactionKind new.
	model add: element.
	model has: element.
	self assert: (model aggregateTransactionKinds includes: element).
	
	element := CompositeActorRole new.
	model add: element.
	model has: element.
	self assert: (model compositeActorRoles includes: element).
	
	element := ElementaryActorRole new.
	model add: element.
	model has: element.
	self assert: (model elementaryActorRoles includes: element).
	
	element := InformationLink new.
	model add: element.
	model has: element.
	self assert: (model informationLinks includes: element).
	
	element := ProcessLink new.
	model add: element.
	model has: element.
	self assert: (model processLinks includes: element).
	
	element := ProductKind new.
	model add: element.
	model has: element.
	self assert: (model productKinds includes: element).
	
	element := TransactionKind new.
	model add: element.
	model has: element.
	self assert: (model transactionKinds includes: element)