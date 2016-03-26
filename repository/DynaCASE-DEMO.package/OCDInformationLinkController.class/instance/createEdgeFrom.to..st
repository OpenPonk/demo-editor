hooks
createEdgeFrom: fromElement to: toElement
	^ (DCRTStyledConnection new
		withContinuousRectangleAttachPoint;
		decorate: [ :deco |
		deco dashedLine ];
		color: Color black;
		edgeFrom: fromElement to: toElement) @ DCRTConnectionHandles 