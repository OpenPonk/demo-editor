as yet unclassified
deleteElement: anElementModel
	self removeDiagram: anElementModel.
	model remove: anElementModel.
	(diagrams select: [ :each | each isKindOf: DCDiagram ]) do: [ :diagram | diagram remove: anElementModel ]