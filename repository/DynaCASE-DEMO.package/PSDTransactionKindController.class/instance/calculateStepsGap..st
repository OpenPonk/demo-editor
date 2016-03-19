as yet unclassified
calculateStepsGap: aProcNumber
	| usableWidth |
	usableWidth := figure extent x - DEMOConfig PSDTransactionHeight.
	((aProcNumber * DEMOConfig PSDProcStepSize) > usableWidth) ifTrue: [ ^ 0 ].
	^ (usableWidth - (aProcNumber * DEMOConfig PSDProcStepSize)) / aProcNumber