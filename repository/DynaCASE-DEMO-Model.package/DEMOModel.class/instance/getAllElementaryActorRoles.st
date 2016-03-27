accessing
getAllElementaryActorRoles
	| tmpCollection |
	tmpCollection := Set new.
	tmpCollection addAll: elementaryActorRoles.
	tmpCollection addAll: (compositeActorRoles flatCollect: [ :each | each elements ] ).
	^ tmpCollection 