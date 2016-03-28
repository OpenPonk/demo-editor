as yet unclassified
swimLinesMoved
	figure translateTo: figure position x @ swimLinesFrontLayer position y.
	figure signalUpdate.
	transactionFrontLayer ifNotNil: [ 
		transactionFrontLayer translateTo: figure position x @ swimLinesFrontLayer position y.
		transactionFrontLayer signalUpdate ]