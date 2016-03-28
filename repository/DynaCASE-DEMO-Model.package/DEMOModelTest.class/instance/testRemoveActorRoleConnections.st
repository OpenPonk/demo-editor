tests-removing
testRemoveActorRoleConnections
	| tran actor1 actor2 |
	actor1 := ElementaryActorRole new.
	actor2 := ElementaryActorRole new.
	tran := TransactionKind new.
	model add: tran.
	tran initiatorRole: actor1.
	tran executorRole: actor2.
	model removeActorRoleConnections: actor1.
	model removeActorRoleConnections: actor2.
	
	self assert: tran initiatorRole equals: nil.
	self assert: tran executorRole equals: nil