as yet unclassified
layoutElements
	firstLevelControllers
		reverseDo:
			[ :each | 
			each figure trachelShape translateTo: (model getPositionFor: each model dcID).
			each addMovedCallback.
			each figure updateConnectedEdges ]