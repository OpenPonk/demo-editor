accessing
demoIdPrefix
	^ self isComposite
		ifTrue: [ 'CA' ]
		ifFalse: [ 'A' ]