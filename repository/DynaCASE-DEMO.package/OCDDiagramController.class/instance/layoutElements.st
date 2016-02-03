as yet unclassified
layoutElements
	firstLevelControllers
		reverseDo:
			[ :each |
			each figure trachelShape extent: (model getSizeFor: each model dcID).
			each figure trachelShape translateTo: (model getPositionFor: each model dcID).
			each addMovedCallback.
			each addResizedCallback.
			each figure updateConnectedEdges ]