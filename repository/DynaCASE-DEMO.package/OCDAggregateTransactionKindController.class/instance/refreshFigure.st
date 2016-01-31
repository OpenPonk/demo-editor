as yet unclassified
refreshFigure
	(self figure trachelShape shapes at: 4) text: self printableID.
	(figure attributeAt: #RTLabelledLabel) text: model name.
	super refreshFigure