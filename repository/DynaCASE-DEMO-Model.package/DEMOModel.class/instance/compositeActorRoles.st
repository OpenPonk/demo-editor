accessing
compositeActorRoles
	^ elements select: [ :each | each isMemberOf: CompositeActorRole ]