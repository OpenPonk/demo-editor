as yet unclassified
onHover: anEvent
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| button initiator executor actName actor |
	button := anEvent button.
	initiator := actorsMapping at: button owner model model initiators first name.
	executor := actorsMapping at: button owner model model executor name.
	actName := DSShortcutMapping nameFor: button model.
	actor := (#(request accept) includes: actName)
		ifTrue: [ initiator ]
		ifFalse: [ executor ].
	(self hasLineFor: actor on: button owner model during: button)
		ifTrue: [ oldInitPosition := initiator spot.
			oldExecPosition := executor spot.
			initiator moveToSpot: button owner model initiatorSpot.
			executor moveToSpot: button owner model executorSpot.
			bubble := figuresFactory
				actor: actor
				on: button owner model
				says: (self lineFor: actor on: button owner model during: button) ]
		ifFalse: [ | transaction |
			transaction := button owner model.
			transaction core icon: button icon.
			transaction action.
			self lineFor: actor on: transaction during: button.
			transaction core icon: button icon.
			transaction core
				icon: (button previousButton ifNil: [ button owner buttons first ]) icon.
			transaction noAction ]