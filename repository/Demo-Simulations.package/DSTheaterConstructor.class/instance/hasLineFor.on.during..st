as yet unclassified
hasLineFor: anActor on: aTransaction during: anAct
	| actorRoleName transactionName actName |
	actorRoleName := anActor spot rail model name.
	transactionName := aTransaction model name.
	actName := DSShortcutMapping nameFor: anAct model.
	^ ((self actorLines at: actorRoleName ifAbsentPut: [ Dictionary new ])
		at: transactionName
		ifAbsentPut: [ Dictionary new ]) at: actName ifPresent: [ :l | l isNotNil ] ifAbsent: [ false ]