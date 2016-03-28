tests-accessing
testGetAllElementaryActorRoles
	| compRole elemRole1 elemRole2 |
	compRole := CompositeActorRole new.
	elemRole1 := ElementaryActorRole new.
	elemRole2 := ElementaryActorRole new.
	model add: compRole; add: elemRole1.
	compRole add: elemRole2.
	
	self assertCollection: (model getAllElementaryActorRoles) hasSameElements: (OrderedCollection new add: elemRole1; add: elemRole2; yourself) 