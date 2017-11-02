api
jsonResponseFor: anEndpoint
	self logCr: anEndpoint.
	^ STON
		fromString:
			(self apiClient
				accept: ZnMimeType applicationJson;
				url: (self apiUrlFor: anEndpoint);
				get;
				response) contents