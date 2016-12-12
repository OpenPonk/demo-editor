as yet unclassified
lineFor: anActor on: aTransaction during: anAct
	| actorRoleName transactionName actName hasLine transactionLines |
	actorRoleName := anActor spot rail model name.
	transactionName := aTransaction model name.
	actName := DSShortcutMapping nameFor: anAct model.
	hasLine := self hasLineFor: anActor on: aTransaction during: anAct.
	transactionLines := (self actorLines at: actorRoleName ifAbsentPut: [ Dictionary new ])
		at: transactionName
		ifAbsentPut: [ Dictionary new ].
	^ hasLine
		ifTrue: [ transactionLines at: actName ]
		ifFalse: [ transactionLines
				at: actName
				put: (UIManager default request: ('What should {1} say?' format: {anActor model})) ]