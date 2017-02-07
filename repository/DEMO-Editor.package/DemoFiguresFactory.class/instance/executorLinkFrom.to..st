shapes - demo
executorLinkFrom: aSource to: aTarget
	| edge markerStyler |
	markerStyler := [ :marker | marker size: 7 ].
	edge := OPRTStyledConnection new
		withBorderAttachPoint;
		color: Color black.
	edge decorations
		color:
			(((Array with: aSource with: aTarget)
				detect: [ :each | each isKindOf: DemoTransactionFigure ]) typeColorFor: #forma).
	(aTarget isKindOf: DemoElementaryActorRoleFigure)
		ifTrue: [ edge head: (markerStyler value: RTFilledDiamond asHead) ]
		ifFalse: [ edge tail: (markerStyler value: RTFilledDiamond asTail) ].
	^ (edge edgeFrom: aSource to: aTarget) @ OPRTConnectionHandles