accessing
avatarFor: anEmail
	^ avatars at: anEmail ifAbsentPut: [ self loadAvatarFor: anEmail ]