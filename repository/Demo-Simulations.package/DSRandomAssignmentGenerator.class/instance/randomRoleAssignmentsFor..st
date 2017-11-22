as yet unclassified
randomRoleAssignmentsFor: aModel
	| dict avatarFor numbers |
	dict := Dictionary
		with:
			#man
				->
					#(Carl Radek Duncan Vincent Jason Bill Joe Liam James Jacob Ethan Henry Luke Joshua Chris)
						asOrderedCollection shuffle
		with:
			#woman
				->
					#(Julie Maryanne Sarah Ida Rachel Jane Emma Zoey Sofia Natalie Aubrey Lucy)
						asOrderedCollection shuffle.
	numbers := Dictionary with: #man -> #() with: #woman -> #().
	avatarFor := [ :key | 
	(numbers at: key) ifEmpty: [ numbers at: key put: #(1 2 3) asOrderedCollection shuffle ].
	(numbers at: key) removeFirst ].
	^ aModel elements
		select: #isActorRole
		thenCollect: [ :each | 
			| key name avatar |
			key := dict keys atRandom.
			name := (dict at: key) removeFirst.
			avatar := avatarFor value: key.
			DSRoleAssignment new
				roleName: each name;
				actorName: name;
				actorAvatar: 'DemoPeopleAvatars::' , key , avatar asString , 'Icon' ]