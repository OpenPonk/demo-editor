as yet unclassified
show
	self diagramController view add: self figure.
	isProductionAct
		ifFalse: [ self diagramController view add: label ]