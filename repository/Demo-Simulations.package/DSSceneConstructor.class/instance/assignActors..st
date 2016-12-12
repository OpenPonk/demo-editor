as yet unclassified
assignActors: aCollection
	actorsMapping := Dictionary new.
	actors := aCollection
		collect: [ :each | 
			DSActor new
				model: each actorName;
				icon: (each actorAvatar scaledToSize: 52 @ 123) ].
	actors withIndexDo: [ :each :i | actorsMapping at: (aCollection at: i) roleName put: each ]