shapes - demo
conditional2LinkFrom: aSource to: aTarget
	| edge |
	edge := DCRTStyledConnection new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		decorate: [ :deco | deco dashedLine ];
		color: Color black.
	^ (edge edgeFrom: aSource to: aTarget) @ DCRTConnectionHandles