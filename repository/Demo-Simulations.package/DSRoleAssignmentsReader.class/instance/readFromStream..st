instance creation
readFromStream: aStream
	^ (NeoCSVReader on: aStream)
		recordClass: DSRoleAssignment;
		skipHeader;
		addField: #roleName:;
		addField: #actorName:;
		addField: #actorAvatar:;
		upToEnd