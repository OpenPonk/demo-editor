tests-adding
testAddModel
	| viewModel |
	viewModel := DEMOViewModel new.
	demoProject addModel: viewModel.
	demoProject addModel: viewModel.
	self assert: demoProject projectContent size equals: 10.
	1 to: 4 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOViewModel ].
	5 to: 7 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOBasicElement ].
	8 to: 10 do:
		[ :position | self assert: (demoProject projectContent at: position) class equals: DEMOLink ].