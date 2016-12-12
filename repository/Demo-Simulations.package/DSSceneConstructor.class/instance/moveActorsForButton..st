as yet unclassified
moveActorsForButton: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| initiator executor |
	initiator := actorsMapping at: aButton owner model model initiators first name.
	executor := actorsMapping at: aButton owner model model executor name.
	aButton when: DSHover do: [ :evt | self onButtonHover: evt button ].
	aButton
		when: DSEnabled
		do: [ :evt | 
			oldInitPosition
				ifNotNil: [ initiator moveToSpot: oldInitPosition.
					executor moveToSpot: oldExecPosition.
					oldInitPosition := nil.
					oldExecPosition := nil ] ].
	aButton
		when: DSCompleted
		do: [ :evt | 
			oldInitPosition := nil.
			oldExecPosition := nil ]