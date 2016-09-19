as yet unclassified
action
	core action.
	initiatorSpot position x < executorSpot position x
		ifTrue: [ initiatorSpot actor actionRight.
			executorSpot actor actionLeft ]
		ifFalse: [ initiatorSpot actor actionLeft.
			executorSpot actor actionRight ].
	self view pushBackEdges