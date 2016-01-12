tests-accessing
testId
	| result anId |
	
	anId := 'testId'.
	
	namedObject dcID: anId .
	result := namedObject dcID.
	
	self assert: anId equals: result 