userinterface
layoutElements
	transControllers
		do: [ :aController |
			aController loadSizesAndPositions.
			aController refreshFigure ]