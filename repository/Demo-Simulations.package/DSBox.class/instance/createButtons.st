creating - subelements
createButtons
	#(rq pm)
		withIndexDo: [ :each :i | self createButtonFor: each side: #left padding: (i - 1) * 40 + 1 ].
	#(ex st ac)
		withIndexDo: [ :each :i | self createButtonFor: each side: #right padding: (3 - i) * 40 + 1 ]