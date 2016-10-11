as yet unclassified
attach
	super attach.
	self figure ports
		do: [ :each | 
			| ctrl |
			ctrl := DemoPSDPortController new.
			ctrl transactionController: self.
			ctrl figure: each.
			ctrl model: nil.
			ctrl attachTo: self diagramController ]