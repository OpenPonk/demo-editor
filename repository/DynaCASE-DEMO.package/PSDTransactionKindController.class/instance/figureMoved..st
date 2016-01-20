as yet unclassified
figureMoved: aShift
	| oldPosition |
	aShift y = 0
		ifFalse: [ self diagramController rearrangeTransactionsAccordingTo: self ].
	oldPosition := oldPosition := diagramController model getPositionFor: model dcID.
	diagramController model savePosition: (figure position x @ oldPosition y) for: model dcID