as yet unclassified
leftActor: anActor says: aLine
	| b |
	b := DSSpeechBubble new.
	b left.
	b model: aLine.
	anActor view add: b.
	RTDirectLayoutTranslator new
		translateBottomLeftOf: b
		to: anActor encompassingRectangle topRight.
	b translateBy: 40 @ 20.
	^ b