as yet unclassified
initialize
	super initialize.
	
	self add: (TransactionKind new dcID: '1').
	self add: (TransactionKind new dcID: '2').
	
	soiSize := 70 @ 140.
	soiPosition := -35 @ -70.