removing
removeElementaryActorRole: aElementaryActorRole
	self removeActorRoleConnections: aElementaryActorRole.
	compositeActorRoles
		do: [ :each | 
			(each elements anySatisfy: [ :x | x = aElementaryActorRole ])
				ifTrue: [ each remove: aElementaryActorRole ] ].
	self removeElement: aElementaryActorRole from: elementaryActorRoles