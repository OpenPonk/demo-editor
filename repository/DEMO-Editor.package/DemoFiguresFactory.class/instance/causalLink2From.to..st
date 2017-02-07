shapes - demo
causalLink2From: aSource to: aTarget
	| edge |
	edge := OPRTStyledConnection new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		color: Color black.
	^ (edge edgeFrom: aSource to: aTarget) @ OPRTConnectionHandles