as yet unclassified
moveActorsForButton: aButton
	"1. if aButton is hovered, temporarily move actors to it,
	 2. if aButton is reverted to enabled, move the actors back to their original position
	 3. if aButton is completed, set their original position to the current transaction
	"
	| initiator |
	initiator := actorsMapping at: aButton owner model model initiators first name.
	

	aButton when: DSHover do: [ :evt | aButton owner model	"transaction" ].
		
	