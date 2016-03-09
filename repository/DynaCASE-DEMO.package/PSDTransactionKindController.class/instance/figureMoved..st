as yet unclassified
figureMoved: aShift
	| oldPosition |
	"aShift y = 0
		ifFalse: [ self diagramController rearrangeTransactionsAccordingTo: self ]."
	swimLines translateTo: swimLinesFrontLayer position x @ figure position y.
	swimLinesFrontLayer translateTo: swimLinesFrontLayer position x @ figure position y.
	oldPosition := oldPosition := diagramController model getPositionFor: model dcID.
	diagramController model savePosition: (figure position x @ oldPosition y) for: model dcID