hooks
createModel
	^ self model ifNil: [ 
	| newModel productModel |
	newModel := 	super createModel.
	productModel := (ProductKindController new diagramController: diagramController ) createModel.
	newModel correspondingProductKind: productModel.
	newModel ]