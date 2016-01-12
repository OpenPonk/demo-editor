figures
refreshFigure
	self figure trachelShape text: (self model dcID, ' - ', self model formulation).
	diagramController refreshFigure.