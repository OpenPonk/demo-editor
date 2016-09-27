shapes - demo
informationLinkFrom: aSource to: aTarget
	^ (DCRTStyledConnection new
		withBorderAttachPoint;
		decorate: [ :deco | deco dashedLine ];
		color: Color black;
		edgeFrom: aSource to: aTarget) @ DCRTConnectionHandles