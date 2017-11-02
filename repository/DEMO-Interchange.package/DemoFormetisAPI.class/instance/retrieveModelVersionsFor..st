api - old
retrieveModelVersionsFor: aModel
	| json versions |
	json := self
		jsonResponseFor: ('/api/SimulationApi/Models/{1}/Versions' format: {aModel id}).
	cachedVersions at: aModel ifPresent: [ :v | ^ v ].
	versions := json @ #modelVersions
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
				label: each @ #label ].
	cachedVersions at: aModel put: versions.
	^ versions