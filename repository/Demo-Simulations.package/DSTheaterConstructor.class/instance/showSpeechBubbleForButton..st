as yet unclassified
showSpeechBubbleForButton: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| actor initiator executor bubble actName removeBubble |
	initiator := actorsMapping at: aButton owner model model initiators first name.
	executor := actorsMapping at: aButton owner model model executor name.
	actName := DSShortcutMapping nameFor: aButton model.
	bubble := nil.
	removeBubble := [ bubble
		ifNotNil: [ bubble remove.
			bubble := nil ] ].
	actor := (#(request accept) includes: actName)
		ifTrue: [ initiator ]
		ifFalse: [ executor ].
	aButton
		when: DSHover
		do: [ :evt | 
			removeBubble value.
			bubble := figuresFactory
				actor: actor
				on: aButton owner model
				says: (self lineFor: actor on: aButton owner model during: aButton) ].
	aButton when: DSCompleted do: [ :evt | removeBubble value ].
	aButton when: DSEnabled do: [ :evt | removeBubble value ]