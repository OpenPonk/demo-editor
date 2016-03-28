tests-accessing
testId
	| result anId |
	anId := 'testId'.
	namedObject id: anId.
	result := namedObject id.
	self assert: anId equals: result