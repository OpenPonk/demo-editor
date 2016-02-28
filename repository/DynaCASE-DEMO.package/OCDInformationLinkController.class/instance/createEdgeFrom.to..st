as yet unclassified
createEdgeFrom: fromElement to: toElement
	^ (DCRTStyledConnection new
		withContinuousRectangleAttachPoint;
		color: Color black;
		edgeFrom: fromElement to: toElement) @ DCRTConnectionHandles 