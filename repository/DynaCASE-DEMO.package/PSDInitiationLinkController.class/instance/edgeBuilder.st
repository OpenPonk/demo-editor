as yet unclassified
edgeBuilder
	| edge |
	edge := DCRTOrthoEdgeBuilder new.
	edge filledNarrowArrowHead.
	edge verticalAttachPoint.
	edge orthoVerticalLine.
	^ edge