as yet unclassified
noAction
	core noAction.
	initiatorSpot actor ifNotNil: #noAction.
	executorSpot actor ifNotNil: #noAction.
	self view pushBackEdges