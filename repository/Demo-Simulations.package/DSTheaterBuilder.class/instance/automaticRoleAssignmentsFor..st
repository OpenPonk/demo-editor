accessing
automaticRoleAssignmentsFor: aModel
	| mNames wNames |
	mNames := #(Carl Radek Duncan Vincent Jason Bill) asOrderedCollection.
	wNames := #(Julie Maryanne Sarah Ida Rachel) asOrderedCollection.
	^ aModel elements
		select: #isActorRole
		thenCollect: [ :each | 
			| name avatar idx |
			2 atRandom = 1
				ifTrue: [ idx := mNames size atRandom.
					name := mNames at: idx.
					mNames removeAt: idx.
					avatar := 'man' , 3 atRandom asString ]
				ifFalse: [ idx := wNames size atRandom.
					name := wNames at: idx.
					wNames removeAt: idx.
					avatar := 'woman' , 3 atRandom asString ].
			DSRoleAssignment new
				roleName: each name;
				actorName: name;
				actorAvatar: (DemoPeopleAvatars perform: (avatar , 'Icon') asSymbol) ]