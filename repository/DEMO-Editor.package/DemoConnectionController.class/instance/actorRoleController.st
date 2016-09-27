accessing
actorRoleController
	^ (Array with: sourceController with: targetController)
		detect: [ :each | each isKindOf: DemoActorRoleController ]