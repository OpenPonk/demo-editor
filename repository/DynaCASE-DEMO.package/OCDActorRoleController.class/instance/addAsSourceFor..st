as yet unclassified
addAsSourceFor: aController
	self assert: (self canBeSourceFor: aController).
	aController source: self