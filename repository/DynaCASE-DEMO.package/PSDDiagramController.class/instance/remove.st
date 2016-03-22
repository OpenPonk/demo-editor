as yet unclassified
remove
	model ifNotNil: [ model announcer unsubscribe: self ].
	self controllers do: [ :each | each ifNotNil: [ each remove ] ]