tests-removing
testRemoveCompositeActorRole
	| compRole elemRole1 elemRole2 |
	compRole := CompositeActorRole new.
	elemRole1 := ElementaryActorRole new.
	elemRole2 := ElementaryActorRole new.
	model add: compRole; add: elemRole1; add: elemRole2.
	compRole add: elemRole1; add: elemRole2.
	model remove: compRole.
	self deny: (model has: elemRole1).
	self deny: (model has: elemRole2)