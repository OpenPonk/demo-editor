helpers
sortProjectTree
	models
		sort: [ :a :b | 
			(((a isKindOf: OPDiagram) and: (b isKindOf: DEMOBasicElement))
				or: ((a isKindOf: OPDiagram) and: (b isKindOf: OPDirectedAssociation)))
				or: ((a isKindOf: DEMOBasicElement) and: (b isKindOf: OPDirectedAssociation)) ]