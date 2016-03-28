as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	model isSelfInitiating
		ifTrue: [ orthoHandler := DCRTOrthoSelfInitHandle new.
			edge := DCRTStyledMultiLine new
				withVerticallAttachPoint;
				head: RTFilledNarrowArrow;
				block: orthoHandler getBlockProducingPath;
				color: Color black.
			edge := edge edgeFrom: fromElement to: toElement.
			edge @ orthoHandler ]
		ifFalse: [ orthoHandler := DCRTOrthoMiddleHandle new.
			edge := DCRTStyledMultiLine new
				withVerticallAttachPoint;
				head: RTFilledNarrowArrow;
				block: orthoHandler getBlockProducingPath;
				color: Color black.
			edge := edge edgeFrom: fromElement to: toElement.
			edge @ orthoHandler ].
	^ edge