as yet unclassified
createSwimLineLabels: aView
	| labelText slHeight hPadding vPadding initiatorId executorId |
	slHeight := DEMOConfig PSDSwimlineHeight.
	hPadding := DEMOConfig PSDSwimlineLabelPadding.
	vPadding := (slHeight / 2) - 9.5.
	initiatorId := self model initiatorRole id asString.
	executorId := self model executorRole id asString.
	
	labelText := 'A' , initiatorId , ': initiator ' , self printableID.
	initiatorLabel := (RTLabel new text: labelText) element.
	aView add: initiatorLabel.
	(RTConstraint on: initiatorLabel background: swimLines)
		topLeft;
		horizontalPadding: hPadding;
		verticalPadding: vPadding;
		stick.
	
	labelText := 'A' , executorId , ': executor ' , self printableID.
	executorLabel := (RTLabel new text: labelText) element.
	aView add: executorLabel.
	(RTConstraint on: executorLabel background: swimLines)
		bottomLeft;
		horizontalPadding: hPadding;
		verticalPadding: vPadding;
		stick.