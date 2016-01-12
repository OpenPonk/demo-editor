hooks
createFigureInView: aView
	| borderBox centerBox label transaction centerBoxSize |
	borderBox := RTRoundedBox new
		extent:
			(PSDDiagramController transactionHeight + 10) @ PSDDiagramController transactionHeight;
		borderRadius: PSDDiagramController transactionHeight / 2;
		borderColor: Color black;
		color: Color white.
	centerBoxSize := PSDDiagramController transactionHeight / 40 * 28.2.
	centerBox := RTBox new
		height: centerBoxSize;
		width: centerBoxSize;
		color: Color white;
		borderColor: Color red;
		borderWidth: 1.5.
	label := RTLabel new
		text: model codeName;
		color: Color black.
	transaction := RTCompositeShape new
		add: borderBox;
		add: centerBox;
		add: label.
	transaction := transaction element.
	(transaction trachelShape shapes at: 2) rotateByDegrees: 45.
	transaction
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: PSDDiagramController transactionHeight / 9;
				cellHeight: PSDDiagramController swimlineHeight;
				verticalShift: PSDDiagramController transactionHeight / 2;
				translationCallback: [ :aShift | self figureMovedBy: aShift ] ).
	^ transaction