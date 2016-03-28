tests-adding
testAddElement
	| element edge |
	element := DEMOBasicElement new.
	edge := DEMOLink new.
	demoProject addElement: element.
	demoProject addElement: element.
	self assert: demoProject projectContent size equals: 10.
	1 to: 3 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	4 to: 7 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	8 to: 10 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ].
	
	demoProject addElement: edge.
	demoProject addElement: edge.
	self assert: demoProject projectContent size equals: 11.
	1 to: 3 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	4 to: 7 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	8 to: 11 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ]
	