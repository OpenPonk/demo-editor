as yet unclassified
enableControl
	| enabledBoxes initiator executor enabledTransactions |
	enabledTransactions := modelManager findEnabledTransactions.
	enabledBoxes := boxes select: [ :each | enabledTransactions includes: each model model ].
	enabledBoxes
		do: [ :box | 
			initiator := actorsMapping at: box model model initiators first name.
			executor := actorsMapping at: box model model executor name.
			view add: initiator.
			view add: executor.
			box model initiatorSpot actor: initiator.
			box model executorSpot actor: executor.
			box buttons first enabled ]