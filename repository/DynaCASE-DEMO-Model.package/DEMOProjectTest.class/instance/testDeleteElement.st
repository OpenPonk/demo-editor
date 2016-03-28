tests-removing
testDeleteElement
	demoProject removeModel: (demoProject projectContent at: 2).
	self assert: demoProject projectContent size equals: 8.
	1 to: 2 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	3 to: 5 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	6 to: 8 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ].
	
	demoProject deleteElement: (demoProject projectContent at: 4).
	self assert: demoProject projectContent size equals: 7.
	1 to: 2 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	3 to: 4 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	5 to: 7 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ].
	
	demoProject deleteElement: (demoProject projectContent at: 6).
	self assert: demoProject projectContent size equals: 6.
	1 to: 2 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	3 to: 4 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	5 to: 6 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ]