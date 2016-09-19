as yet unclassified
blurTransaction: aTransaction
	| blur |
	blur := RTBox new
		height: aTransaction core height + 25;
		color: (aTransaction view canvas color alpha: 0.8);
		element.
	blur width: (aTransaction initiatorSpot position x - aTransaction executorSpot position x) abs - 20.
	blur translateTo: aTransaction core position + (0 @ 10).
	aTransaction view add: blur.
	aTransaction attributeAt: #blur put: blur