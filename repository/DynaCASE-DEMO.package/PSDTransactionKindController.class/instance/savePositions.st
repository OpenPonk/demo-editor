as yet unclassified
savePositions
	| array |
	array := Array braceWith: figure position with: swimLinesFrontLayer position.
	diagramController model savePosition: array for: model uuid