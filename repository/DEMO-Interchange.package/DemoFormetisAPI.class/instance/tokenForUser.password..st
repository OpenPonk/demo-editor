delegation
tokenForUser: aUser password: aPassword
	| aToken |
	aToken := self retrieveTokenForUser: aUser password: aPassword.
	aToken isError
		ifTrue: [ self error: aToken error ].
	^ aToken