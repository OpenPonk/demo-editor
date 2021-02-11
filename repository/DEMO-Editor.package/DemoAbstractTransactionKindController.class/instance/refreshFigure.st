as yet unclassified
refreshFigure
	(self figure trachelShape shapes at: 2) extent: 28 @ 28.
	(figure attributeAt: #RTLabelledLabel) text: self model name.

	super refreshFigure