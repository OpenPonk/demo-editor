as yet unclassified
computeBoxSize
	| encRectangle |
	subElFigures ifEmpty: [ ^ 40 @ 40 ].
	encRectangle := subElFigures encompassingRectangle.
	^ (encRectangle width + 18) @ (encRectangle height + 30 + 20 + 9.5)