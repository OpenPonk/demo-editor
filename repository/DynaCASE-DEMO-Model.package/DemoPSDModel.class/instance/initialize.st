as yet unclassified
initialize
	| initiator executor transaction |
	
	super initialize.
	
	initiator := ElementaryActorRole new dcID: 1; name: 'init role'.
	executor := ElementaryActorRole new dcID: 2; name: 'exec role'.
	transaction := (TransactionKind new dcID: '1').
	transaction initiatorRole: initiator.
	transaction executorRole: executor.
	transaction psdPosition: 0 @ 0.
	self add: transaction.
	
	initiator := ElementaryActorRole new dcID: 3; name: 'init role'.
	executor := ElementaryActorRole new dcID: 1; name: 'exec role'.
	transaction := (TransactionKind new dcID: '2').
	transaction initiatorRole: initiator.
	transaction executorRole: executor.
	transaction psdPosition: 0 @ 1.
	self add: transaction.