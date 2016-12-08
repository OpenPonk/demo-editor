accessing
actorAvatar
	^ avatar
		ifNil: [ | split |
			split := actorAvatar splitOn: '::'.
			avatar := split first asClass perform: split second asSymbol ]