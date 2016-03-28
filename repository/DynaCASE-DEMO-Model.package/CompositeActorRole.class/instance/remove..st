as yet unclassified
remove: anElement
	elements remove: anElement.
	self announceRemoved: anElement.
	anElement announcer unsubscribe: self