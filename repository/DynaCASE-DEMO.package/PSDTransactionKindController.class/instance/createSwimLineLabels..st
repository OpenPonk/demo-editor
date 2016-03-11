as yet unclassified
createSwimLineLabels: aView
	| labelText slHeight hPadding vPadding |
	slHeight := DEMOConfig PSDSwimlineHeight.
	hPadding := DEMOConfig PSDSwimlineLabelPadding.
	vPadding := slHeight / 2 - 9.5.
	model initiatorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNilDo:
			[ :tmp | labelText := 'A' , model initiatorRole id asString , ': initiator ' , self printableID ].
	initiatorLabel := (RTLabel new text: labelText) element.
	aView add: initiatorLabel.
	labelConstraints add: (RTConstraint on: initiatorLabel background: swimLines).
	labelConstraints last
		topLeft;
		horizontalPadding: hPadding;
		verticalPadding: vPadding;
		stick.
		
	model executorRole
		ifNil: [ labelText := 'Initiator not defined' ]
		ifNotNilDo:
			[ :tmp | labelText := 'A' , model executorRole id asString , ': executor ' , self printableID ].
	executorLabel := (RTLabel new text: labelText) element.
	aView add: executorLabel.
	labelConstraints add: (RTConstraint on: executorLabel background: swimLines).
	labelConstraints last
		bottomLeft;
		horizontalPadding: hPadding;
		verticalPadding: vPadding;
		stick