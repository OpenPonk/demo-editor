as yet unclassified
deleteElement: anElementModel
	self removeDiagram: anElementModel.
	(diagrams select: [ :each | each isKindOf: DCDiagram ]) do: [ :diagram | diagram remove: anElementModel ]