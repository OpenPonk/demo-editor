as yet unclassified
refreshFigure
	(self figure trachelShape shapes at: 2) text: self printableID.
	(self figure attributeAt: #RTLabelledLabel) text: model name.
	super refreshFigure