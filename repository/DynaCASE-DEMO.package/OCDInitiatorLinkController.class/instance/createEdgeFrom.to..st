as yet unclassified
createEdgeFrom: fromElement to: toElement
	^ (OPRTStyledConnection new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: fromElement to: toElement) @ OPRTConnectionHandles 