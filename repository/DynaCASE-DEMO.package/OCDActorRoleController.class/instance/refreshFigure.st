as yet unclassified
refreshFigure
	idLabel trachelShape text: self printableID.
	nameLabel trachelShape text: model name.
	idLabelConstraint move.
	nameLabelConstraint move.
	idLabel pushFront.
	nameLabel pushFront.
	super refreshFigure