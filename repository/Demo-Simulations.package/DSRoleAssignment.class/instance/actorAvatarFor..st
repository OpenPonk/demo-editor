accessing
actorAvatarFor: aReference
	| split |
	(aReference includes: $@)
		ifTrue: [ ^ DSGravatar current avatarFor: aReference ].
	split := aReference splitOn: '::'.
	^ split first asClass perform: split second asSymbol