as yet unclassified
baseShape
	^ self figuresFactory newRoundedBox
		size: 10;
		borderRadiusElement: [ :el | 
			self isFact
				ifTrue: [ 5 ]
				ifFalse: [ 0 ] ];
		yourself