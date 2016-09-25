as yet unclassified
loadModel
	| models actor transaction |
	models := Array with: sourceController model with: targetController model.
	actor := models detect: [ :each | each isKindOf: DemoActorRole ].
	transaction := models detect: [ :each | each isKindOf: DemoTransactionKind ].
	transaction addInitiator: actor