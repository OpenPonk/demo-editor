accessing
demoIdPrefix
	^ self isComposite
		ifTrue: [ 'AC' ]
		ifFalse: [ 'A' ]