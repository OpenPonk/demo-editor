visiting - associations
visitInitActorRoleIds: anElement
	| transaction |
	transaction := modelObject.
	anElement elements
		do: [ :each | 
			unresolved
				add: [ (self elementWithUuid: (self uuidFor: anElement parent))
						addInitiator: (self elementWithUuid: each uuidValue) ] ]