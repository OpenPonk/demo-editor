api - old
retrieveModels
	| json |
	"	json := self jsonResponseFor: '/api/SimulationApi/Models'."
	json := self
		jsonResponseFor:
			('/api/administration/enterprises/<1s>/models'
				expandMacrosWith: (self enterprises first at: #id)).
	^ cachedModels := json @ #models
		collect: [ :each | 
			DFXModel new
				creatorId: (UUID fromString: each @ #creatorId);
				creationDate: (DateAndTime fromString: each @ #creationDate);
				enterpriseId: (UUID fromString: each @ #enterpriseId);
				externalId: each @ #externalId;
				label: each @ #name;
				id: (UUID fromString: each @ #id) ]