as yet unclassified
removeFigure
	super removeFigure.
	label
		ifNotNil: [ label view
				ifNotNil: [ label remove.
					label := nil ] ]