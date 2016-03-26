as yet unclassified
sortProjectTree
	models
		sort:
			[ :a :b | 
			((a isKindOf: DCDiagram) and: (b isKindOf: DEMOBasicElement))
				or: ((a isKindOf: DEMOBasicElement) and: (b isKindOf: DCEdge)) ]