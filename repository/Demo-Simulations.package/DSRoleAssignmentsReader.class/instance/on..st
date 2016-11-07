instance creation
on: aStream
	^ (NeoCSVReader on: aStream)
		recordClass: DSRoleAssignment;
		skipHeader;
		addField: #roleName:;
		addField: #actorName:;
		addField: #actorAvatar:
			converter: [ :s | 
			| split |
			split := s splitOn: '::'.
			split first asClass perform: split second asSymbol ];
		upToEnd