actions
moveToSpot: aSpot
	RTSmoothLayoutTranslator new
		nbCycles: 0.5;
		translate: self to: aSpot position.
	aSpot actor: self