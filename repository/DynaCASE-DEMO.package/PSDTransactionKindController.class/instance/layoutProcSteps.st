as yet unclassified
layoutProcSteps
	| stepsGap |
	(lowerProcSteps size = 0 and: upperProcSteps size = 0) ifTrue: [ ^ self ].
	(diagramController model isSizeLocked: model uuid)
		ifFalse: [ stepsGap := 10 ]
		ifTrue: [ stepsGap := self calculateStepsGap: (upperProcSteps size max: lowerProcSteps size) ].
	RTHorizontalLineLayout new
		horizontalGap: stepsGap;
		on: upperProcSteps.
	RTHorizontalLineLayout new
		horizontalGap: stepsGap;
		on: lowerProcSteps.
	upperProcStepsConstraint move.
	lowerProcStepsConstraint move.
	(self figure trachelShape shapes at: 2) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y.
	(self figure trachelShape shapes at: 3) translateTo: (lowerProcSteps at: productActIndex) position x @ figure position y