accessing
id: anObject
	super id: anObject.
	correspondingProductKind ifNotNil: [ correspondingProductKind id: anObject ]