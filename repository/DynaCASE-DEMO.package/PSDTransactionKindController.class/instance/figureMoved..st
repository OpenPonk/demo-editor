as yet unclassified
figureMoved: aShift
	
	"aShift y = 0
		ifFalse: [ self diagramController rearrangeTransactionsAccordingTo: self ]."
	"oldPosition := oldPosition := diagramController model getPositionFor: model dcID."
	swimLines translateTo: swimLinesFrontLayer position x @ figure position y.
	swimLinesFrontLayer translateTo: swimLinesFrontLayer position x @ figure position y.
	self savePositions