visiting - associations
visitInitActorRoleIds: anElement
	| transaction |
	transaction := modelObject.
	anElement elements do: [ :each | unresolved add: [ transaction addInitiator: (self elementWithUuid: each uuidValue) ] ]