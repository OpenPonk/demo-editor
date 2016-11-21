as yet unclassified
flipTransaction
	| initPosition execPosition |
	initPosition := initiatorSpot position.
	execPosition := executorSpot position.
	initiatorSpot translateTo: execPosition.
	executorSpot translateTo: initPosition.
	self view signalUpdate.
	self view pushBackEdges