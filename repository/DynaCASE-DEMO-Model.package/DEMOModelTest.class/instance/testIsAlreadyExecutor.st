tests-testing
testIsAlreadyExecutor
	| tran actor |
	actor := ElementaryActorRole new.
	tran := TransactionKind new.
	model add: tran.
	self assert: (model isAlreadyExecutor: actor) equals: false.
	tran executorRole: actor.
	self assert: (model isAlreadyExecutor: actor) equals: true