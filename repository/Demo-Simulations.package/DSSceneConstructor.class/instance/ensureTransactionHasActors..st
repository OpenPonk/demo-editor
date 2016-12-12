as yet unclassified
ensureTransactionHasActors: aBox
	| initiator executor |
	initiator := actorsMapping at: aBox model model initiators first name.
	executor := actorsMapping at: aBox model model executor name.
	initiator view
		ifNil: [ view add: initiator.
			aBox model initiatorSpot actor: initiator ].
	executor view
		ifNil: [ view add: executor.
			aBox model executorSpot actor: executor ].
	view signalUpdate