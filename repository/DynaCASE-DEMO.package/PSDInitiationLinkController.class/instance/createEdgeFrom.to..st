as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	orthoHandler := DCRTOrthoMiddleHandle new.
	model isSelfInitiating
		ifTrue: [ 
			edge := DCRTStyledConnection new
				withVerticallAttachPoint;
				head: RTFilledNarrowArrow;
				color: Color black;
				edgeFrom: fromElement to: toElement.
			edge shape addPoint: [fromElement position + (0 @ 20)].
			edge shape addPoint: [fromElement position + (-70 @ 20)].
			edge shape addPoint: [toElement position + ((fromElement position x - toElement position x - 70) @ -20)].
			edge shape addPoint: [toElement position + (0 @ -20)] ]
		ifFalse: [
			edge := DCRTStyledMultiLine new
				withVerticallAttachPoint;
				head: RTFilledNarrowArrow;
				block: orthoHandler getBlockProducingPath;
				color: Color black.
			edge := edge edgeFrom: fromElement to: toElement.
			diagramController view add: edge.
			edge @ orthoHandler ].
	^ edge