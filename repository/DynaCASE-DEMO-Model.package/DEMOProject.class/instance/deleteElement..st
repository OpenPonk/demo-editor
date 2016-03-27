removing
deleteElement: anElementModel
	self removeModel: anElementModel.
	model remove: anElementModel.
	(models select: [ :each | each isKindOf: DCDiagram ]) do: [ :each | each remove: anElementModel ]