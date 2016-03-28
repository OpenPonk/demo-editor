tests-accessing
testFindOCDLinkFromToExecutor
	| link source target |
	link := OCDLink new.
	source := DEMOBasicElement new.
	target := DEMOBasicElement new.
	link source: source.
	link target: target.
	viewModel addOCDLink: link.
	self assert: (viewModel findOCDLinkFrom: target to: source executor: false) equals: nil.
	self assert: (viewModel findOCDLinkFrom: source to: target executor: true) equals: nil.
	self assert: (viewModel findOCDLinkFrom: source to: target executor: false) = link.
	link isExecutorLink: true.
	self assert: (viewModel findOCDLinkFrom: source to: target executor: true) = link.