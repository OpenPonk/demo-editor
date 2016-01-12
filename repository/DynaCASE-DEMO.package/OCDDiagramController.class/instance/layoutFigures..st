as yet unclassified
layoutFigures: aControllers
	aControllers reverseDo: [ :each |
		each figure trachelShape translateTo: (each model ocdPosition).
		each figure updateConnectedEdges ].