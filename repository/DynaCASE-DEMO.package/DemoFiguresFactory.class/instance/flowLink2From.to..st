shapes - demo
flowLink2From: aSource to: aTarget
	| edge |
	edge := DCRTStyledConnection new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		color: Color black.
	^ (edge edgeFrom: aSource to: aTarget) @ DCRTConnectionHandles