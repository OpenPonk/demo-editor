hooks
createFigure
	| box |
	
	box := RTBox new
		borderColor: Color black;
		size: DEMOConfig PSDProcStepSize.
	isProductionAct
		ifTrue: [ box color: Color veryLightGray ]
		ifFalse: [ 
			box color: Color white ].
	box := box element.
	isProductionAct ifFalse: [ self addLabelTo: box ].
	
	^ box