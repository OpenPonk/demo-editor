private
getNextKeyFor: aSet
	aSet size = 0
		ifTrue: [ ^ 0 ]
		ifFalse:
			[ ^ ((OrderedCollection newFrom: (aSet collect: [ :each | each dcID ]))
				sort: [ :a :b | a < b ]) last + 1 ]