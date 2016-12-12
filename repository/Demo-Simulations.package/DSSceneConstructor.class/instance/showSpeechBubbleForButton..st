as yet unclassified
showSpeechBubbleForButton: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| removeBubble |
	bubble := nil.
	removeBubble := [ bubble
		ifNotNil: [ bubble remove.
			bubble := nil ] ].
	aButton when: DSCompleted do: [ :evt | removeBubble value ].
	aButton when: DSEnabled do: [ :evt | removeBubble value ]