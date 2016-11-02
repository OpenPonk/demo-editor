as yet unclassified
moveActorsForButton: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"

	| initiator executor oldInitPosition oldExecPosition |
	initiator := actorsMapping at: aButton owner model model initiators first name.
	executor := actorsMapping at: aButton owner model model executor name.
	aButton
		when: DSHover
		do: [ :evt | 
			oldInitPosition := initiator spot.
			oldExecPosition := executor spot.
			initiator moveToSpot: aButton owner model initiatorSpot.
			executor moveToSpot: aButton owner model executorSpot ].
	aButton
		when: DSEnabled
		do: [ :evt | 
			oldInitPosition
				ifNotNil: [ initiator moveToSpot: oldInitPosition.
					executor moveToSpot: oldExecPosition ] ]