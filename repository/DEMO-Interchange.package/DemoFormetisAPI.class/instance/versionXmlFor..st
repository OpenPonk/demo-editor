api - new
versionXmlFor: aVersionMeta
	^ self xmlResponseFor: '/api/administration/models/' , aVersionMeta id asString