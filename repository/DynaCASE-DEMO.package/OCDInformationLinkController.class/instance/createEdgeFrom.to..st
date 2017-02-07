hooks
createEdgeFrom: fromElement to: toElement
	^ (OPRTStyledConnection new
		withBorderAttachPoint;
		decorate: [ :deco |
		deco dashedLine ];
		color: Color black;
		edgeFrom: fromElement to: toElement) @ OPRTConnectionHandles 