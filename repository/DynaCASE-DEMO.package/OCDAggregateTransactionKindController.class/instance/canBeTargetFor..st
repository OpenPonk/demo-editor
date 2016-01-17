as yet unclassified
canBeTargetFor: aController
	(aController isKindOf: OCDInformationLinkController ) ifFalse: [ ^ false ].
	^ aController source isKindOf: OCDActorRoleController