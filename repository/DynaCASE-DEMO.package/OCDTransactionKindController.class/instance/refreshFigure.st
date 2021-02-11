as yet unclassified
refreshFigure

	(self figure trachelShape shapes at: 3) text: self printableID.
	(self figure trachelShape shapes at: 2) extent: 28 @ 28.
	(figure attributeAt: #RTLabelledLabel) text: model name.
	super refreshFigure