tests
testIsExpired
	| token |
	token := DemoFormetisOAuthToken
		from: (Dictionary with: #'.expires' -> 'Fri, 25 Nov 2015 12:16:28 GMT').
	self assert: token isExpired