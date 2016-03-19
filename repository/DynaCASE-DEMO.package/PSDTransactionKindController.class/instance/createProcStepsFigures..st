processSteps
createProcStepsFigures: aShowAll
	| upper lower stepsGap |
	processSteps
		do: [ :each | 
			each hide.
			each refreshFigure ].
	upperProcSteps removeAll.
	lowerProcSteps removeAll.
	upper := OrderedCollection new.
	lower := OrderedCollection new.
	processSteps
		do: [ :each | 
			((aShowAll or: each numberOfConnections > 0) or: each isProductionAct)
				ifTrue: [ each isUpper
						ifTrue: [ upper add: each figure ]
						ifFalse: [ lower add: each figure ].
					each isProductionAct
						ifTrue: [ upper add: PSDTransactionStep createSpacer ].
					each show ]
				ifFalse: [ each isUpper
						ifTrue: [ upper add: PSDTransactionStep createSpacer ]
						ifFalse: [ lower add: PSDTransactionStep createSpacer ] ] ].
	1 to: upper size do: [ :position | 
		((upper at: position) color == Color transparent and: (lower at: position) color == Color transparent)
			ifFalse: [ upperProcSteps add: (upper at: position).
				lowerProcSteps add: (lower at: position) ] ].
	1 to: lowerProcSteps size do: [ :position | 
		(lowerProcSteps at: position) color == Color veryLightGray
			ifTrue: [ productActIndex := position ] ].
	(diagramController model isSizeLocked: model dcID)
		ifFalse: [ stepsGap := 10 ]
		ifTrue: [ stepsGap := self calculateStepsGap: (upperProcSteps size max: lowerProcSteps size) ].
	RTHorizontalLineLayout new
		horizontalGap: stepsGap;
		on: upperProcSteps.
	RTHorizontalLineLayout new
		horizontalGap: stepsGap;
		on: lowerProcSteps.
	upperProcStepsConstraint
		ifNil: [ upperProcStepsConstraint := RTConstraint on: upperProcSteps background: (self figure trachelShape shapes at: 1).
			upperProcStepsConstraint
				stick;
				top;
				center;
				verticalPadding: -0.5 - (DEMOConfig PSDProcStepSize / 2) ].
	lowerProcStepsConstraint
		ifNil: [ lowerProcStepsConstraint := RTConstraint on: lowerProcSteps background: (self figure trachelShape shapes at: 1).
			lowerProcStepsConstraint
				stick;
				bottom;
				center;
				verticalPadding: 0.5 - (DEMOConfig PSDProcStepSize / 2) ].
	self refreshFigure