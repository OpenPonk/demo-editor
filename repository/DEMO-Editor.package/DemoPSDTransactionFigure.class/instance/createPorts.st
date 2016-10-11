as yet unclassified
createPorts
	#(rq pm)
		withIndexDo: [ :each :i | 
			self createPortsFor: each type: #beAct padding: i * 50 - 20.
			self createPortsFor: each type: #beFact padding: i * 50 ].
	#(st ac)
		withIndexDo: [ :each :i | 
			self createPortsFor: each type: #beAct padding: i * 50 + 130.
			self createPortsFor: each type: #beFact padding: i * 50 + 150 ]