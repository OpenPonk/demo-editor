as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDLinkController) ifFalse: [ ^ false ].
	((aController source isNil) or: (aController source isKindOf: OCDActorRoleController)) ifFalse: [ ^ false ].

	^ ((aController isMemberOf: OCDExecutorLinkController)
		and: (self model executorRole isNil))
	or:
	((aController isMemberOf: OCDInitiatorLinkController)
		and: (self model initiatorRole isNil)).