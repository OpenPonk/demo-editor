instance creation
write: aCollection toStream: aStream
	^ (NeoCSVWriter on: aStream)
		nextPut: #(roleName actorName actorAvatar);
		addFields: #(roleName actorName actorAvatarSource);
		nextPutAll: aCollection