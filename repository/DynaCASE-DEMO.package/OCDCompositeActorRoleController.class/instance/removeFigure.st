as yet unclassified
removeFigure
	super removeFigure.
	nameLabel view
		ifNotNil: [ 
			nameLabel remove.
			nameLabel := nil ]