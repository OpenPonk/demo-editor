tests-positioning
testSaveSizeFor
	| element |
	element := DEMOBasicElement new.
	self assert: (viewModel getSizeFor: element uuid) equals: 40 @ 40.
	viewModel saveSize: 10 @ 20 for: element uuid.
	self assert: (viewModel getSizeFor: element uuid) equals: 10 @ 20