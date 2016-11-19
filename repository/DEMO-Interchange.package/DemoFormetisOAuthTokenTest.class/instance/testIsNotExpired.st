tests
testIsNotExpired
	| token |
	token := DemoFormetisOAuthToken
		from: (Dictionary with: #'.expires' -> 'Fri, 25 Nov 2056 12:16:28 GMT').
	self deny: token isExpired