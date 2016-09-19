as yet unclassified
rightActor: anActor says: aLine
	| b |
	b := DSSpeechBubble new.
	b model: aLine.
	anActor view add: b.
	RTDirectLayoutTranslator new
		translateBottomRightOf: b
		to: anActor encompassingRectangle topLeft.
	b translateBy: -40 @ 20.
	^ b