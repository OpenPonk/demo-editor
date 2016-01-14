figures
refreshFigure
	self figure trachelShape text: (self model dcID asString, ' - ', self model formulation).
	diagramController repaint.