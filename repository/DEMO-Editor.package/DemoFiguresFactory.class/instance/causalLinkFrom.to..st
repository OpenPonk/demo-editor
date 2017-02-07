shapes - demo
causalLinkFrom: aSource to: aTarget
	| orthoHandler edge |
	orthoHandler := DCRTOrthoMiddleHandle new.
	edge := OPRTStyledMultiLine new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		block: orthoHandler getBlockProducingPath;
		color: Color black.
	edge := edge edgeFrom: aSource to: aTarget.
	^ edge @ orthoHandler