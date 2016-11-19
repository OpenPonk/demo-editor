tests
testSuccessResponse
	| token |
	token := self
		tokenFor:
			'{"access_token":"TOKEN","token_type":"bearer","expires_in":"ignored","userName":"USER",".issued":"Fri, 11 Nov 2016 12:16:28 GMT",".expires":"Fri, 25 Nov 2016 12:16:28 GMT"}'.
	self assert: token isSuccess.
	self assert: token token equals: 'TOKEN'.
	self assert: token type equals: 'bearer'.
	self
		assert: token expires
		equals:
			(DateAndTime
				year: 2016
				month: 11
				day: 25
				hour: 12
				minute: 16
				second: 28
				offset: 0 hours asDuration)