bootstrapping
typeFor: aShortcut
	^ DemoFact new
		type:
			((self types pairsCollect: [ :a :b | a -> b ])
				detect: [ :pair | pair key = aShortcut asLowercase ]) value