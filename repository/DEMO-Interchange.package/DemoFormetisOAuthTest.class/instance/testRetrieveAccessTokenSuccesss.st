as yet unclassified
testRetrieveAccessTokenSuccesss
	| user pass token |
	user := 'someone@example.com'.
	pass := 'pass'.
	self
		withServerDo: [ :server | 
			server
				onRequestRespond: [ :request | 
					ZnResponse
						ok:
							(ZnEntity
								text:
									'{"access_token":"TOKEN","token_type":"bearer","expires_in":"ignored","userName":"USER",".issued":"Fri, 11 Nov 2016 12:16:28 GMT",".expires":"Fri, 25 Nov 2016 12:16:28 GMT"}') ].
			token := oauth accessTokenForUser: user password: pass url: server localUrl ].
	self assert: token isSuccess.
	self assert: token token equals: 'TOKEN'