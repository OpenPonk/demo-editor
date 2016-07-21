as yet unclassified
createEdgeFrom: fromElement to: toElement
	^ (DCRTStyledConnection new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: fromElement to: toElement) @ DCRTConnectionHandles 