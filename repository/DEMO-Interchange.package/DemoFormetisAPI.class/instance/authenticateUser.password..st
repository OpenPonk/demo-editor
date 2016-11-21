initialization
authenticateUser: aUser password: aPassword
	token := self retrieveTokenForUser: aUser password: aPassword.
	^ token