tests-positioning
testSavePositionFor
	| element |
	element := DEMOBasicElement new.
	self assert: (viewModel getPositionFor: element uuid) equals: 0 @ 0.
	viewModel savePosition: 10 @ 20 for: element uuid.
	self assert: (viewModel getPositionFor: element uuid) equals: 10 @ 20