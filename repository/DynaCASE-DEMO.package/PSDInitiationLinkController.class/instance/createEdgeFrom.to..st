as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	orthoHandler := DCRTOrthoMiddleHandle new.
	edge := (DCRTStyledMultiLine new
		withVerticallAttachPoint;
		head: RTFilledNarrowArrow;
		block: orthoHandler getBlockProducingPath;
		color: Color black).
	edge := edge edgeFrom: fromElement to: toElement.
	diagramController view add: edge.
	^ edge @ orthoHandler