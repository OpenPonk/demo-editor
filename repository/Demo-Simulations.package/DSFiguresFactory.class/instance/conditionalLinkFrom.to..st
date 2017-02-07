as yet unclassified
conditionalLinkFrom: aSource to: aTarget
	^ (OPRTStyledMultiLine new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		dashedLine;
		color: Color black;
		edgeFrom: aSource to: aTarget)
		model: #conditional -> (aSource -> aTarget);
		yourself