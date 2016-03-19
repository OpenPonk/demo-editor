as yet unclassified
figureMoved: aShift
	swimLines translateTo: swimLinesFrontLayer position x @ figure position y.
	swimLinesFrontLayer translateTo: swimLinesFrontLayer position x @ figure position y.
	self savePositions