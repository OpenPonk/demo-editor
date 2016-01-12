as yet unclassified
computeBoxSize
	| encRectangle |

	subElements ifEmpty: [ ^ 40 @ 40 ].
	encRectangle := subElements encompassingRectangle.
	^ (encRectangle width + 18) @ (encRectangle height + 30 + 20 + 9.5)