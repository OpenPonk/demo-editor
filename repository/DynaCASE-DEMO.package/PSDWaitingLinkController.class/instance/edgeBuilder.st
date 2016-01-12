as yet unclassified
edgeBuilder
	| edge |
	edge := DCRTOrthoEdgeBuilder new.
	edge filledNarrowArrowHead.
	edge verticalReverseAttachPoint.
	edge orthoVerticalLine.
	edge dashedLine.
	^ edge