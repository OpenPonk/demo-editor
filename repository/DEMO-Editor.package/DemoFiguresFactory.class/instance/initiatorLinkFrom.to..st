shapes - demo
initiatorLinkFrom: aSource to: aTarget
	^ (OPRTStyledConnection new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: aSource to: aTarget) @ OPRTConnectionHandles