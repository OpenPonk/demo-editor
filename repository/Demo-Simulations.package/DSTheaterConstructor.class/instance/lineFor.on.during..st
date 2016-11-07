as yet unclassified
lineFor: anActor on: aTransaction during: anAct
	"Demeter shall cry tears of blood."

	| actorRoleName transactionName actName |
	actorRoleName := anActor spot rail model name.
	transactionName := aTransaction model name.
	actName := DSShortcutMapping nameFor: anAct model.
	^ ((actorLines at: actorRoleName ifAbsentPut: [ Dictionary new ])
		at: transactionName
		ifAbsentPut: [ Dictionary new ])
		at: actName
		ifAbsentPut: [ UIManager default request: ('What should {1} say?' format: {anActor model}) ]