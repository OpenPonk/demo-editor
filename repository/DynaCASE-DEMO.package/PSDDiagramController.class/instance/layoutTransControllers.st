userinterface
layoutTransControllers
	transControllers do: [ :aController |
		| position |
		position := aController model psdPosition x.
		aController figure translateTo: (position @ 
		(PSDDiagramController swimlineHeight * aController orderIndex )) ]