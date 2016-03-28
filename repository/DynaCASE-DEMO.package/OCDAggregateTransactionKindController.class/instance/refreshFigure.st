as yet unclassified
refreshFigure
	(self figure trachelShape shapes at: 4) text: self printableID.
	(self figure trachelShape shapes at: 3) extent: 28 @ 28.
	(figure attributeAt: #RTLabelledLabel) text: model name.
	super refreshFigure