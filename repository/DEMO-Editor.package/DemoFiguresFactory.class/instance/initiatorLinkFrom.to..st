shapes - demo
initiatorLinkFrom: aSource to: aTarget
	^ (DCRTStyledConnection new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: aSource to: aTarget) @ DCRTConnectionHandles