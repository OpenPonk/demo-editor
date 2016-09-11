accessing - icons
personActionIcon
	"Private - Generated method"
	^ self icons
		at: #personActionIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self personActionIconContents readStream) ]