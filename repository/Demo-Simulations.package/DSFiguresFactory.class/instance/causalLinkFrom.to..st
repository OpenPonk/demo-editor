as yet unclassified
causalLinkFrom: aSource to: aTarget
	| orthoHandler edge |
	orthoHandler := DCRTOrthoMiddleHandle new.
	edge := DCRTStyledMultiLine new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		color: Color black.
	edge := edge edgeFrom: aSource to: aTarget.
	^ edge