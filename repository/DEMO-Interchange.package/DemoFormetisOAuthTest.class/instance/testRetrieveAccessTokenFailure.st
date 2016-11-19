as yet unclassified
testRetrieveAccessTokenFailure
	| user pass token |
	user := 'someone@example.com'.
	pass := 'pass'.
	self
		withServerDo: [ :server | 
			server
				onRequestRespond:
					[ :request | ZnResponse badRequest: nil entity: (ZnEntity text: '{"error":"unsupported_grant_type"}') ].
			token := oauth accessTokenForUser: user password: pass url: server localUrl ].
	self assert: token isError