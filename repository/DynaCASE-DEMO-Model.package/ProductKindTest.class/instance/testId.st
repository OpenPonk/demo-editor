tests-accessing
testId
	| result anId |
	
	anId := 'testId'.
	
	productKind id: anId .
	result := productKind id.
	
	self assert: anId equals: result 