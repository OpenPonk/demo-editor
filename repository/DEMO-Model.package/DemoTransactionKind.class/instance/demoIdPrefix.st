accessing
demoIdPrefix
	^ self isAggregate
		ifTrue: [ 'AT' ]
		ifFalse: [ 'T' ]