as yet unclassified
createPorts
	#(rq pm)
		withIndexDo: [ :each :i | 
			self createPortsFor: each type: #beAct padding: i * 50 - 25.
			self createPortsFor: each type: #beFact padding: i * 50 ].
	#(st ac dn)
		withIndexDo: [ :each :i | 
			self createPortsFor: each type: #beAct padding: i * 40 + 130.
			self createPortsFor: each type: #beFact padding: i * 40 + 150 ]