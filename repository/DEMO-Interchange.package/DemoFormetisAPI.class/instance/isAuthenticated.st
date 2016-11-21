testing
isAuthenticated
	^ token isNotNil and: [ token isExpired not ]