accessing
orderIndex: anOrderIndex
	| oldPosition |
	oldPosition := diagramController model getPositionFor: model dcID.
	diagramController model savePosition: (oldPosition x @ anOrderIndex) for: model dcID