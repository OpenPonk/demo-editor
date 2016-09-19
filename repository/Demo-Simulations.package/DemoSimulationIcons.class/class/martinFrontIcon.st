accessing - icons
martinFrontIcon
	"Private - Generated method"
	^ self icons
		at: #martinFrontIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self martinFrontIconContents readStream) ]