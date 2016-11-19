converting
tokenForResponse: aZnResponse
	^ DemoFormetisOAuthToken from: (STON fromString: aZnResponse contents)