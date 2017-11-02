api - new
enterprises
	^ (self jsonResponseFor: '/api/administration/enterprises') at: 'enterprises'