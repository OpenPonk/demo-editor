shapes - demo
informationLinkFrom: aSource to: aTarget
	^ (OPRTStyledConnection new
		withBorderAttachPoint;
		decorate: [ :deco | deco dashedLine ];
		color: Color black;
		edgeFrom: aSource to: aTarget) @ OPRTConnectionHandles