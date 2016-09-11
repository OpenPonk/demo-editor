as yet unclassified
communicationLinkFrom: aSource to: aTarget
	^ RTLine new
		attachPoint: RTBorderAttachPoint new;
		color: (Color fromHexString: 'd0d0d0');
		width: 5;
		edgeFrom: aSource to: aTarget