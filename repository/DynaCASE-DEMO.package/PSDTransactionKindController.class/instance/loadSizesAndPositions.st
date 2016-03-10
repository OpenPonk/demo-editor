as yet unclassified
loadSizesAndPositions
	| sizes positions |
	sizes := diagramController model getSizeFor: model dcID.
	positions := diagramController model getPositionFor: model dcID.
	"self figure extent: (sizes at: 1)."
	swimLinesFrontLayer extent: (sizes at: 2).
	self figure translateTo: (positions at: 1).
	swimLinesFrontLayer translateTo: (positions at: 2).
	diagramController model saveSize: sizes for: model dcID.
	diagramController model savePosition: positions for: model dcID