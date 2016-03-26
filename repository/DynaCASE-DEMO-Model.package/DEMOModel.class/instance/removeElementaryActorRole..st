adding
removeElementaryActorRole: aElementaryActorRole
	self removeActorRoleConnections: aElementaryActorRole.
	self removeElement: aElementaryActorRole from: elementaryActorRoles.
	compositeActorRoles
		do:
			[ :each | 
			(each elements anySatisfy: [ :x | x = aElementaryActorRole ])
				ifTrue: [ each remove: aElementaryActorRole ] ]