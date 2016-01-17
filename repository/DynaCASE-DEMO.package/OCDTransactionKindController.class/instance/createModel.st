as yet unclassified
createModel
	| newModel productModel |
	newModel := 	super createModel.
	productModel := (ProductKindController new diagramController: diagramController ) createModel.
	newModel correspondingProductKind: productModel.
	^ newModel