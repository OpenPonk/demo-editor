accessing
name
	^ (isInitiation
		ifTrue: [ 'Init ' ]
		ifFalse: [ 'Waiting ' ]) , 'T' , source asString , ' ' , sourceStep , ' -> T'
		, target asString , ' ' , targetStep