visitor
visitExecActorRoleId: anElement
	|transaction|
	transaction := modelObject.
	unresolved add: [ transaction executor: (self elementWithUuid: anElement uuidValue) ]