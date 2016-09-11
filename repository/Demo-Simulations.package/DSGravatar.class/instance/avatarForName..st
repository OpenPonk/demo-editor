accessing
avatarForName: aName
	^ people at: aName ifPresent: [ :mail | self avatarFor: mail ] ifAbsent: [ self avatarFor: '' ]