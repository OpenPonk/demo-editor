instance creation
tokenFor: aString
	^ DemoFormetisOAuthToken from: (STON fromString: aString)