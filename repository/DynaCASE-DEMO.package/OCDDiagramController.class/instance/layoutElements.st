as yet unclassified
layoutElements
	firstLevelControllers
		reverseDo:
			[ :each |
			each figure trachelShape extent: (model getSizeFor: each model uuid).
			each figure trachelShape translateTo: (model getPositionFor: each model uuid).
			each addMovedCallback.
			each addResizedCallback.
			each figure updateConnectedEdges ]