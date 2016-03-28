tests-accessing
testName
	| result aName |
	aName := 'testName'.
	namedObject name: aName.
	result := namedObject name.
	self assert: aName equals: result