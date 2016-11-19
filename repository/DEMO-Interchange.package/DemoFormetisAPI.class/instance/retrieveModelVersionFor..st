api - calls
retrieveModelVersionFor: aVersion
	| xml |
	xml := self
		xmlResponseFor: ('/api/SimulationApi/ModelVersions/{1}' format: {aVersion id}).
	true
		ifTrue: [ ^ xml ].
	^ xml @ #modelVersions
		collect: [ :each | 
			DFXVersionMeta new
				publishedDate: (DateAndTime fromString: each @ #publishedDate);
				creationDate: (DateAndTime fromString: each @ #creationDate);
				version: (each @ #version) asNumber;
				disabled: each @ #disabled = 'true';
				changedDate: (DateAndTime fromString: each @ #changedDate);
				modelId: (UUID fromString: each @ #modelId);
				id: (UUID fromString: each @ #id);
				published: each @ #published = 'true';
				label: each @ #label ]