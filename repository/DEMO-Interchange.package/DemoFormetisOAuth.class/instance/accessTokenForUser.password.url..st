communication
accessTokenForUser: aUserName password: aPassword url: aRemote
	| data |
	(data := ZnApplicationFormUrlEncodedEntity new)
		at: #username put: aUserName;
		at: #password put: aPassword;
		at: #grant_type put: 'password'.
	^ self tokenForResponse: (ZnEasy post: aRemote data: data)