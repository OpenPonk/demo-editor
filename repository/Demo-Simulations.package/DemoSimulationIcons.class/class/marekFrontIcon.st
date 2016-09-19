accessing - icons
marekFrontIcon
	"Private - Generated method"
	^ self icons
		at: #marekFrontIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self marekFrontIconContents readStream) ]