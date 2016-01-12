as yet unclassified
hide
	"self diagramController view announcer unsubscribe: self figure."
	self diagramController view removeElement: self figure.
	isProductionAct
		ifFalse:
			[ self diagramController view removeElement: label ]