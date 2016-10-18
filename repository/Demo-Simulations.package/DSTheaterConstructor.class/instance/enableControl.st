as yet unclassified
enableControl
	| firstBox initiator executor|
	firstBox := boxes detect: [ :each | each incomingEdges isEmpty ].
	initiator := (actorsMapping at: firstBox model model initiators first name).
	executor := actorsMapping at: firstBox model model executor name.
	view add: initiator.
	view add: executor.
	firstBox model initiatorSpot actor: initiator.
	firstBox model executorSpot actor: executor.
	firstBox buttons first enabled