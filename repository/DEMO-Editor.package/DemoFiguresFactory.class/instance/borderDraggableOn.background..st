interactions
borderDraggableOn: anElement background: aBackground
	anElement removeInteractionIfPresent: RTAbstractDraggable.
	anElement @ (OPRTBorderDraggable background: aBackground).
	self move: anElement with: aBackground