api
xmlResponseFor: anEndpoint
	self logCr: anEndpoint.
	^ XMLDOMParser
		parse:
			(self apiClient
				accept: ZnMimeType applicationXml;
				url: (self apiUrlFor: anEndpoint);
				get;
				response) contents