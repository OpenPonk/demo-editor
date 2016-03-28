tests-accessing
testProjectContent
	self assert: demoProject projectContent size equals: 9.
	1 to: 3 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	4 to: 6 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	7 to: 9 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ]