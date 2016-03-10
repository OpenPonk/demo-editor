as yet unclassified
saveSizes
	| array |
	array := Array braceWith: figure extent with: swimLinesFrontLayer extent.
	diagramController model saveSize: array for: model dcID.
	self savePositions