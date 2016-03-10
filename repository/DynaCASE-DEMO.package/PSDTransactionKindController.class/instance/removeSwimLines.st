as yet unclassified
removeSwimLines
	swimLines view
		ifNotNil: [ 
			swimLines remove.
			swimLines := nil ].
	
	swimLinesFrontLayer view
		ifNotNil: [ 
			swimLinesFrontLayer remove.
			swimLinesFrontLayer := nil ].