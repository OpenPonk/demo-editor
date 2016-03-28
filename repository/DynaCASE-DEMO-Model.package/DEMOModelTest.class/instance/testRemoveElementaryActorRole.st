tests-removing
testRemoveElementaryActorRole
	| compRole elemRole |
	compRole := CompositeActorRole new.
	elemRole := ElementaryActorRole new.
	model add: compRole; add: elemRole.
	compRole add: elemRole.
	model remove: elemRole.
	self deny: (compRole elements contains: [ :each | each = elemRole ])