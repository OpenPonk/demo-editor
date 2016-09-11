as yet unclassified
createCommunicationBetween: onePerson and: anotherPerson in: aView
	| p1 p2 com c |
	p1 := personCache
		at: onePerson
		ifAbsentPut: [ p1 := DSPerson new.
			p1 label: onePerson.
			p1 translateBy: 0 @ 0.
			aView add: p1.
			p1 ].
	p2 := personCache
		at: anotherPerson
		ifAbsentPut: [ p2 := DSPerson new.
			p2 label: anotherPerson.
			p2 translateBy: 320 @ 0.
			aView add: p2.
			p2 ].
	com := self communicationLinkFrom: p1 to: p2.
	aView add: com.
	aView pushBackEdges.
	c := DSCloud new.
	c communication: com.
	aView add: c.
	c translateBy: 160 @ 0.
	^ RTGroup with: p1 with: p2 with: c