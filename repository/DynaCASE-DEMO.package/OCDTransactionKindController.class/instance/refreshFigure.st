as yet unclassified
refreshFigure
	(self figure trachelShape shapes at: 3) text: self printableID.
	(figure attributeAt: #RTLabelledLabel) text: model name.
	super refreshFigure