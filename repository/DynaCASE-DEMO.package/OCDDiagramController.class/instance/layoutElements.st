as yet unclassified
layoutElements
	firstLevelControllers
		reverseDo:
			[ :each | 
			each figure trachelShape translateTo: (diagramController model getPositionFor: self dcID).
			each figure updateConnectedEdges ]