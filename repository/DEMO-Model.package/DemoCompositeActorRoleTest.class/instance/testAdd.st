tests
testAdd
	| compRole elemRole1 elemRole2 model |
	model := DEMOModel new.
	DEMOProject new model: model.
	compRole := CompositeActorRole new.
	elemRole1 := ElementaryActorRole new.
	elemRole2 := ElementaryActorRole new.
	model add: compRole.
	compRole add: elemRole1; add: elemRole2.
	self assertCollection: compRole relatedElements equals: (OrderedCollection new add: elemRole1; add: elemRole2; yourself ) 