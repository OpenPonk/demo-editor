as yet unclassified
noAction
	core noAction.
	initiatorSpot ifNotNil: #noAction.
	executorSpot ifNotNil: #noAction.
	self view pushBackEdges