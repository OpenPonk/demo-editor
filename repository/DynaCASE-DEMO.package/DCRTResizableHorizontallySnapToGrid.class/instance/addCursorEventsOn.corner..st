as yet unclassified
addCursorEventsOn: anElement corner: aCorner
	(aCorner = #left or: aCorner = #right)
		ifTrue: [ 
			anElement
				when: TRMouseLeave
				do: [ :evt | TRPlatform current showTemporaryCursor: nil ].
			anElement
				when: TRMouseEnter
				do: [ :evt | TRPlatform current showTemporaryCursor: (self cursorForCorner: aCorner) ] ]