as yet unclassified
causalLinkFrom: aSource to: aTarget
	^ (DCRTStyledMultiLine new
		withBorderAttachPoint;
		head: (RTFilledNarrowArrow asHead size: 7);
		color: Color black;
		edgeFrom: aSource to: aTarget)
		model: #causal -> (aSource -> aTarget);
		yourself