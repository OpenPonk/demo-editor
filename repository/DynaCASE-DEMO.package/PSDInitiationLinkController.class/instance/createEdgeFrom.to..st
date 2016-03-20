as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	edge := (DCRTStyledConnection new
		withContinuousRectangleAttachPoint;
		color: Color black).
	edge head: RTFilledArrow.
	edge := edge edgeFrom: fromElement to: toElement.
	diagramController view add: edge.
	^ edge @ DCRTConnectionHandles  