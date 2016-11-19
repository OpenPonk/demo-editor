api - calls
retrieveModels
	| json |
	json := self jsonResponseFor: '/api/SimulationApi/Models'.
	^ json @ #models
		collect: [ :each | 
			DFXModel new
				creatorId: (UUID fromString: each @ #creatorId);
				creationDate: (DateAndTime fromString: each @ #creationDate);
				enterpriseId: (UUID fromString: each @ #enterpriseId);
				externalId: each @ #externalId;
				label: each @ #label;
				id: (UUID fromString: each @ #id) ]