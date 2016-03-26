accessing
orderIndex: anOrderIndex
	| oldPosition |
	oldPosition := diagramController model getPositionFor: model uuid.
	diagramController model savePosition: (oldPosition x @ anOrderIndex) for: model uuid