removing
deleteElement: anElementModel
	self removeModel: anElementModel.
	model remove: anElementModel.
	(models select: [ :each | each isKindOf: OPDiagram ]) do: [ :each | each remove: anElementModel ]