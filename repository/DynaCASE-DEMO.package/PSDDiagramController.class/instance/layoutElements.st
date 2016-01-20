userinterface
layoutElements
	transControllers
		do:
			[ :aController | 
			| position |
			position := model getPositionFor: aController model dcID.
			aController figure translateTo: position x @ (position y * self class swimlineHeight) ]