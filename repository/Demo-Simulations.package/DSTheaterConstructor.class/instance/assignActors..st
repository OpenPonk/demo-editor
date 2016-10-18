as yet unclassified
assignActors: aCollection
	actorsMapping := Dictionary new.
	actors := aCollection
		collect: [ :pair | 
			DSActor new
				model: pair value first;
				icon: ((DemoPeopleAvatars perform: (pair value second , 'Icon') asSymbol) scaledToSize: 52 @ 123) ].
	actors withIndexDo: [ :each :i | actorsMapping at: (aCollection at: i) key put: each ]