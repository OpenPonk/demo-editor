as yet unclassified
createEdgeFrom: fromElement to: toElement
	| edge |
	orthoHandler := DCRTOrthoMiddleHandle new.
	edge := (DCRTStyledMultiLine new
		attachPoint: RTVerticalReverseAttachPoint new;
		head: RTFilledNarrowArrow;
		dashedLine;
		block: orthoHandler getBlockProducingPath;
		color: Color black).
	edge := edge edgeFrom: fromElement to: toElement.
	^ edge @ orthoHandler