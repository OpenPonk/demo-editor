accessing
refreshFigure
	| encRect transHeight transWidth |
	super refreshFigure.
	lowerProcSteps size > 0
		ifTrue:
			[ transHeight := PSDDiagramController transactionHeight.
			encRect := lowerProcSteps encompassingRectangle.
			transWidth := encRect width + transHeight.
			(self figure trachelShape shapes at: 1)
				width: transWidth;
				height: transHeight.
			(self figure trachelShape shapes at: 2)
				translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y.
			(self figure trachelShape shapes at: 3)
				translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y ].
	label trachelShape text: model name.
	label signalUpdate.