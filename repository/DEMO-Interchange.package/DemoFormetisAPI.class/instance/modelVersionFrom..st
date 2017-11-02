api - new
modelVersionFrom: aDictionary
	^ DFXVersionMeta new
		creationDate: (DateAndTime fromString: aDictionary @ #creationDate);
		version: (aDictionary @ #version) asNumber;
		disabled: aDictionary @ #disabled = 'true';
		changedDate: (DateAndTime fromString: aDictionary @ #changedDate);
		modelId: (UUID fromString: aDictionary @ #id);
		id: (UUID fromString: aDictionary @ #versionId);
		label: aDictionary @ #name