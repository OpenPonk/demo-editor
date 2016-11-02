as yet unclassified
noAction
	core noAction.
	initiatorSpot ifNotNil: #noGlow.
	executorSpot ifNotNil: #noGlow.
	self view pushBackEdges