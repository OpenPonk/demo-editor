visiting - model
visitActorRoleDTO: anElement
	|role|
	role := DemoActorRole new.
	references at: anElement put: role.
	model add: role.
	modelObject := role.