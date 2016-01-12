tests-accessing
testId
	| result anId |
	
	anId := 'testId'.
	
	productKind dcID: anId .
	result := productKind dcID.
	
	self assert: anId equals: result 