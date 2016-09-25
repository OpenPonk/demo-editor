hooks
connectionFeedback
	^ DCInteractiveLine new
		lineBuilder: [ :fromFigure :toFigure | 
			RTArrowedLine new
				color: Color black;
				edgeFrom: fromFigure to: toFigure ];
		from: sourceController figure