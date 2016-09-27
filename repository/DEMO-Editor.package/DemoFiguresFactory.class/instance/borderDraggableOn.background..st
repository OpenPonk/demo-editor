interactions
borderDraggableOn: anElement background: aBackground
	anElement removeInteractionIfPresent: RTAbstractDraggable.
	anElement @ (DCRTBorderDraggable background: aBackground).
	self move: anElement with: aBackground