as yet unclassified
ensureTransactionHasActors: aTransaction
	| initiator executor firstBox |
	firstBox := boxes detect: [ :each | each incomingEdges isEmpty ].
	rails detect: [ :each | each model name ].
	
	initiator := (actorsMapping at: firstBox model model initiators first name).
	executor := actorsMapping at: firstBox model model executor name.
	view add: initiator.
	view add: executor.
	firstBox model initiatorSpot actor: initiator.
	firstBox model executorSpot actor: executor.
	firstBox buttons first enabled