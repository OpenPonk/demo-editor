as yet unclassified
layoutElements
	"TODO implement"
	firstLevelControllers reverseDo: [ :each |
		each figure trachelShape translateTo: 0 @ 0.
		each figure updateConnectedEdges ].