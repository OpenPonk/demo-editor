tests
testErrorResponse
	| token |
	token := self tokenFor: '{"error":"unsupported_grant_type"}'.
	self assert: token isError.
	self assert: token error equals: 'unsupported_grant_type'