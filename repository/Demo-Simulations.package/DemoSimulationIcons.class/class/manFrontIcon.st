accessing - icons
manFrontIcon
	"Private - Generated method"
	^ self icons
		at: #manFrontIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self manFrontIconContents readStream) ]