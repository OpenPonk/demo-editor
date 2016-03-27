tests-removing
testRemoveActorRoleConnections
	| element |
	element := AggregateTransactionKind new.
	model add: element.
	model remove: element.
	self deny: (model has: element).
	self deny: (model aggregateTransactionKinds includes: element).