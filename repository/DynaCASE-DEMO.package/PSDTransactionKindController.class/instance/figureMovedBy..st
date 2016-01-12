as yet unclassified
figureMovedBy: aShift
	aShift y = 0
		ifFalse: [ self diagramController rearrangeTransactionsAccordingTo: self ].
	model psdPosition: (figure position x @ model psdPosition y)