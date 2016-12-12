as yet unclassified
onButtonHover: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| boxFigure transactionFigure transaction initiator executor actor |
	boxFigure := aButton owner.
	transactionFigure := boxFigure model.
	transaction := transactionFigure model.
	initiator := actorsMapping at: transaction initiators first name.
	executor := actorsMapping at: transaction executor name.
	actor := (#(request accept) includes: (DSShortcutMapping nameFor: aButton model))
		ifTrue: [ initiator ]
		ifFalse: [ executor ].
	(self hasLineFor: actor on: transactionFigure during: aButton)
		ifTrue: [ oldInitPosition := initiator spot.
			oldExecPosition := executor spot.
			initiator moveToSpot: transactionFigure initiatorSpot.
			executor moveToSpot: transactionFigure executorSpot.
			transactionFigure core icon: aButton icon.
			transactionFigure action.
			bubble := figuresFactory
				actor: actor
				on: aButton owner model
				says: (self lineFor: actor on: transactionFigure during: aButton) ]
		ifFalse: [ self lineFor: actor on: transactionFigure during: aButton
			"transactionFigure core icon: aButton icon.
			transactionFigure core
				icon: (aButton previousButton ifNil: [ aButton owner buttons first ]) icon.
			transactionFigure noAction" ]	"transactionFigure := aButton owner model.
			transactionFigure core icon: aButton icon.
			transactionFigure action."