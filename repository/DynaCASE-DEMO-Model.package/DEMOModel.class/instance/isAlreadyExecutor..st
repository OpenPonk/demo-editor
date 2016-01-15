as yet unclassified
isAlreadyExecutor: anActorRole
	^ (transactionKinds collect: [ :trans | trans executorRole ] thenReject: [ :each | each == nil ] ) detect: [ :actor | actor id = anActorRole id ] ifFound: [ ^ true ] ifNone: [ ^ false ] 