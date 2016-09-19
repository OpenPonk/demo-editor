accessing - icons
personFrontIcon
	"Private - Generated method"
	^ self icons
		at: #personFrontIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self personFrontIconContents readStream) ]