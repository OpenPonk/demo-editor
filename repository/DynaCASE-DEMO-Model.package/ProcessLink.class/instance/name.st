accessing
name
	^ (isInitiation
		ifTrue: [ 'Init ' ]
		ifFalse: [ 'Waiting ' ]) , source printableID , ' ' , sourceStep , ' -> '
		, target printableID , ' ' , targetStep