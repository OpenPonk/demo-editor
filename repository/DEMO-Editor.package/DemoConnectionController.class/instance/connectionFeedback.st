hooks
connectionFeedback
	^ OPInteractiveLine new
		lineBuilder: [ :fromFigure :toFigure | 
			RTLine new
				color: Color black;
				edgeFrom: fromFigure to: toFigure ];
		from: sourceController figure