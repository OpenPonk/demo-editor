as yet unclassified
confirmAction
	| loginText passwordText api token |
	loginText := login text.
	passwordText := password text.
	loginText ifEmpty: [ UIManager default alert: 'Missing login.' ].
	passwordText ifEmpty: [ UIManager default alert: 'Missing password.' ].
	loginText isNotEmpty & passwordText isNotEmpty
		ifFalse: [ ^ self ].
	api := DemoFormetisAPI default.
	token := api authenticateUser: loginText password: passwordText.
	token isError
		ifTrue: [ UIManager default abort: token errorDescription title: 'Authentication failure' ]
		ifFalse: [ self delete.
			whenAuthenticated value ]