icons
iconColored: aColor inverted: isInverted
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: aColor.
	isInverted
		ifTrue: [ (self icon
				collectColors: [ :each | 
					each alpha = 0
						ifTrue: [ each ]
						ifFalse: [ each negated ] ]) displayOn: c at: 0 @ 0 rule: Form blend ]
		ifFalse: [ self icon displayOn: c at: 0 @ 0 rule: Form blend ].
	^ c