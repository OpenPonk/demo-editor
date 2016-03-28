removing
removeCompositeActorRole: aCompositeActorRole
	self removeActorRoleConnections: aCompositeActorRole.
	self removeElement: aCompositeActorRole from: compositeActorRoles 