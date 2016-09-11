as yet unclassified
enabledIcon
	| c |
	c := (Form extent: 40 @ 40 depth: 32) fillColor: (Color fromHexString: 'ff4343').
	(self icon
		collectColors: [ :each | 
			each alpha = 0
				ifTrue: [ each ]
				ifFalse: [ each negated ] ]) displayOn: c at: 0 @ 0 rule: Form blend.
	^ c