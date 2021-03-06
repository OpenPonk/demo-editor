as yet unclassified
createTransactionFigure: aView
	| borderBox centerBox idLabel transaction centerBoxSize |
	borderBox := RTRoundedBox new
		extent:
			(DEMOConfig PSDTransactionHeight + 10) @ DEMOConfig PSDTransactionHeight;
		borderRadius: DEMOConfig PSDTransactionHeight / 2;
		borderColor: Color black;
		color: Color white.
	centerBoxSize := DEMOConfig PSDTransactionHeight / 40 * 28.2.
	centerBox := RTBox new
		height: centerBoxSize;
		width: centerBoxSize;
		color: Color white;
		borderColor: Color red;
		borderWidth: 1.5.
	idLabel := RTLabel new
		text: self printableID;
		color: Color black.
	transaction := RTCompositeShape new
		add: borderBox;
		add: centerBox;
		add: idLabel.
	transaction := transaction element.
	(transaction trachelShape shapes at: 2) rotateByDegrees: 45.
	transaction
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: DEMOConfig PSDTransactionHeight / 9;
				cellHeight: DEMOConfig PSDSwimlineHeight;
				verticalShift: DEMOConfig PSDTransactionHeight / 2;
				translationCallback: [ :aShift | self figureMoved: aShift ] ).
	label := (RTLabel new text: model name) element.
	labelConstraint := RTConstraint on: label background: transaction.
	labelConstraint 
		top;
		outer;
		padding: 13;
		stick.
	aView add: label.
	^ transaction