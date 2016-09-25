as yet unclassified
remove
	| models actor transaction |
	super remove.
	models := Array with: sourceController model with: targetController model.
	actor := models detect: [ :each | each isKindOf: DemoActorRole ].
	transaction := models detect: [ :each | each isKindOf: DemoTransactionKind ].
	transaction removeInitiator: actor