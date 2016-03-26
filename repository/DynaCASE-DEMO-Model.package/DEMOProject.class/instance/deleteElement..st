as yet unclassified
deleteElement: anElementModel
	self removeDiagram: anElementModel.
	model remove: anElementModel.
	(models select: [ :each | each isKindOf: DCDiagram ]) do: [ :each | each remove: anElementModel ]